param(
    [string]$Slug = 'crimson_abyss_temple',
    [ValidateSet('crimson', 'storm', 'neon', 'psycho')]
    [string]$ParticleTheme = 'crimson'
)

$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.Drawing

$projectRoot = Split-Path -Parent $PSScriptRoot
$sourcePath = Join-Path $projectRoot ("assets\generated\stages\{0}_source.png" -f $Slug)
$previewPath = Join-Path $projectRoot ("assets\generated\stages\{0}_1536x864.png" -f $Slug)
$sffPath = Join-Path $projectRoot ("stages\{0}.sff" -f $Slug)
$headerSourcePath = Join-Path $projectRoot 'chars\Death Ogre\OGRE.sff'

function Set-UInt16LE([byte[]]$Buffer, [int]$Offset, [uint16]$Value) {
    [BitConverter]::GetBytes($Value).CopyTo($Buffer, $Offset)
}

function Set-UInt32LE([byte[]]$Buffer, [int]$Offset, [uint32]$Value) {
    [BitConverter]::GetBytes($Value).CopyTo($Buffer, $Offset)
}

function Convert-IndexedPixelsToPcx {
    param(
        [byte[]]$Pixels,
        [byte[]]$Palette,
        [int]$Width,
        [int]$Height,
        [int]$Stride
    )

    $bytesPerLine = if (($Width % 2) -eq 0) { $Width } else { $Width + 1 }
    $stream = [IO.MemoryStream]::new()
    $writer = [IO.BinaryWriter]::new($stream)
    $header = [byte[]]::new(128)
    $header[0] = 10
    $header[1] = 5
    $header[2] = 1
    $header[3] = 8
    Set-UInt16LE $header 4 0
    Set-UInt16LE $header 6 0
    Set-UInt16LE $header 8 ([uint16]($Width - 1))
    Set-UInt16LE $header 10 ([uint16]($Height - 1))
    Set-UInt16LE $header 12 ([uint16]$Width)
    Set-UInt16LE $header 14 ([uint16]$Height)
    $header[64] = 0
    $header[65] = 1
    Set-UInt16LE $header 66 ([uint16]$bytesPerLine)
    Set-UInt16LE $header 68 1
    Set-UInt16LE $header 70 ([uint16]$Width)
    Set-UInt16LE $header 72 ([uint16]$Height)
    $writer.Write($header)

    for ($y = 0; $y -lt $Height; $y++) {
        $rowOffset = $y * $Stride
        $x = 0
        while ($x -lt $bytesPerLine) {
            $value = if ($x -lt $Width) { $Pixels[$rowOffset + $x] } else { [byte]0 }
            $run = 1
            while ($run -lt 63 -and ($x + $run) -lt $bytesPerLine) {
                $next = if (($x + $run) -lt $Width) { $Pixels[$rowOffset + $x + $run] } else { [byte]0 }
                if ($next -ne $value) { break }
                $run++
            }
            if ($run -gt 1 -or (($value -band 0xC0) -eq 0xC0)) {
                $writer.Write([byte](0xC0 -bor $run))
                $writer.Write([byte]$value)
            } else {
                $writer.Write([byte]$value)
            }
            $x += $run
        }
    }

    $writer.Write([byte]12)
    $writer.Write($Palette)
    $writer.Flush()
    $result = $stream.ToArray()
    $writer.Dispose()
    $stream.Dispose()
    return $result
}

function Convert-BitmapToPcx([Drawing.Bitmap]$Bitmap) {
    $tempGif = Join-Path ([IO.Path]::GetTempPath()) ("crimson-abyss-{0}.gif" -f [Guid]::NewGuid())
    $Bitmap.Save($tempGif, [Drawing.Imaging.ImageFormat]::Gif)
    try {
        $indexed = [Drawing.Bitmap]::FromFile($tempGif)
        try {
            $rectangle = [Drawing.Rectangle]::new(0, 0, $indexed.Width, $indexed.Height)
            $data = $indexed.LockBits(
                $rectangle,
                [Drawing.Imaging.ImageLockMode]::ReadOnly,
                [Drawing.Imaging.PixelFormat]::Format8bppIndexed
            )
            try {
                $stride = [Math]::Abs($data.Stride)
                $raw = [byte[]]::new($stride * $indexed.Height)
                [Runtime.InteropServices.Marshal]::Copy($data.Scan0, $raw, 0, $raw.Length)
            } finally {
                $indexed.UnlockBits($data)
            }

            if ($data.Stride -lt 0) {
                $topDown = [byte[]]::new($stride * $indexed.Height)
                for ($y = 0; $y -lt $indexed.Height; $y++) {
                    [Array]::Copy($raw, ($indexed.Height - 1 - $y) * $stride, $topDown, $y * $stride, $stride)
                }
                $raw = $topDown
            }

            $palette = [byte[]]::new(768)
            for ($i = 0; $i -lt 256; $i++) {
                $color = $indexed.Palette.Entries[$i]
                $palette[$i * 3] = $color.R
                $palette[$i * 3 + 1] = $color.G
                $palette[$i * 3 + 2] = $color.B
            }
            return Convert-IndexedPixelsToPcx $raw $palette $indexed.Width $indexed.Height $stride
        } finally {
            $indexed.Dispose()
        }
    } finally {
        Remove-Item -LiteralPath $tempGif -Force -ErrorAction SilentlyContinue
    }
}

$source = [Drawing.Bitmap]::FromFile($sourcePath)
try {
    $background = [Drawing.Bitmap]::new(1536, 864, [Drawing.Imaging.PixelFormat]::Format24bppRgb)
    try {
        $graphics = [Drawing.Graphics]::FromImage($background)
        try {
            $graphics.InterpolationMode = [Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
            $graphics.PixelOffsetMode = [Drawing.Drawing2D.PixelOffsetMode]::HighQuality
            $graphics.SmoothingMode = [Drawing.Drawing2D.SmoothingMode]::HighQuality
            $graphics.DrawImage($source, 0, 0, 1536, 864)
        } finally {
            $graphics.Dispose()
        }
        $background.Save($previewPath, [Drawing.Imaging.ImageFormat]::Png)
        $backgroundPcx = Convert-BitmapToPcx $background
    } finally {
        $background.Dispose()
    }
} finally {
    $source.Dispose()
}

$particleWidth = 640
$particleHeight = 300
$particleStride = 640
$particlePixels = [byte[]]::new($particleStride * $particleHeight)
$random = [Random]::new(2411)
for ($i = 0; $i -lt 170; $i++) {
    $x = $random.Next(0, $particleWidth)
    $y = $random.Next(0, $particleHeight)
    $tone = [byte]$random.Next(1, 5)
    $particlePixels[$y * $particleStride + $x] = $tone
    if ($x + 1 -lt $particleWidth -and $random.NextDouble() -gt 0.45) {
        $particlePixels[$y * $particleStride + $x + 1] = [byte][Math]::Max(1, $tone - 1)
    }
    if ($y + 1 -lt $particleHeight -and $random.NextDouble() -gt 0.60) {
        $particlePixels[($y + 1) * $particleStride + $x] = [byte]1
    }
}

$particlePalette = [byte[]]::new(768)
$particleColors = switch ($ParticleTheme) {
    'storm' {
        @(@(255, 0, 255), @(20, 55, 85), @(45, 115, 170), @(105, 195, 255), @(220, 245, 255))
    }
    'neon' {
        @(@(255, 0, 255), @(15, 60, 85), @(10, 175, 220), @(215, 25, 210), @(255, 125, 240))
    }
    'psycho' {
        @(@(255, 0, 255), @(55, 5, 80), @(115, 15, 175), @(210, 30, 235), @(255, 105, 250))
    }
    default {
        @(@(255, 0, 255), @(70, 0, 10), @(145, 8, 24), @(235, 35, 38), @(255, 125, 65))
    }
}
for ($i = 0; $i -lt $particleColors.Count; $i++) {
    $particlePalette[$i * 3] = $particleColors[$i][0]
    $particlePalette[$i * 3 + 1] = $particleColors[$i][1]
    $particlePalette[$i * 3 + 2] = $particleColors[$i][2]
}
$particlesPcx = Convert-IndexedPixelsToPcx $particlePixels $particlePalette $particleWidth $particleHeight $particleStride

$sourceHeader = [IO.File]::ReadAllBytes($headerSourcePath)
$header = [byte[]]::new(512)
[Array]::Copy($sourceHeader, 0, $header, 0, 512)
Set-UInt32LE $header 16 2
Set-UInt32LE $header 20 2
Set-UInt32LE $header 24 512
Set-UInt32LE $header 28 32
$header[32] = 1

$records = @(
    @{ Group = 0; Image = 0; X = 768; Y = 0; Data = $backgroundPcx; Comment = 'CRIMSONBG' },
    @{ Group = 1; Image = 0; X = 320; Y = 300; Data = $particlesPcx; Comment = 'EMBERS' }
)

$output = [IO.MemoryStream]::new()
$binary = [IO.BinaryWriter]::new($output)
try {
    $binary.Write($header)
    $offset = 512
    for ($i = 0; $i -lt $records.Count; $i++) {
        $record = $records[$i]
        $data = [byte[]]$record.Data
        $nextOffset = if ($i -eq $records.Count - 1) { 0 } else { $offset + 32 + $data.Length }
        $binary.Write([uint32]$nextOffset)
        $binary.Write([uint32]$data.Length)
        $binary.Write([int16]$record.X)
        $binary.Write([int16]$record.Y)
        $binary.Write([uint16]$record.Group)
        $binary.Write([uint16]$record.Image)
        $binary.Write([uint16]0)
        $binary.Write([byte]0)
        $comment = [Text.Encoding]::ASCII.GetBytes([string]$record.Comment)
        $commentBuffer = [byte[]]::new(13)
        [Array]::Copy($comment, 0, $commentBuffer, 0, [Math]::Min(13, $comment.Length))
        $binary.Write($commentBuffer)
        $binary.Write($data)
        $offset = $nextOffset
    }
    $binary.Flush()
    [IO.File]::WriteAllBytes($sffPath, $output.ToArray())
} finally {
    $binary.Dispose()
    $output.Dispose()
}

Write-Host "Created $previewPath"
Write-Host "Created $sffPath"
