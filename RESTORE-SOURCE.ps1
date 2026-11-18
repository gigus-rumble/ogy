# Jalankan dari folder hasil clone repositori ogy.
$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$partsDir = Join-Path $root "source-parts"
$archive = Join-Path $root "SS-Coffee-source.tar.gz"
$parts = Get-ChildItem -Path $partsDir -Filter "SS-Coffee-source.tar.gz.part*" | Sort-Object Name

if ($parts.Count -ne 7) {
    throw "Diperlukan 7 bagian arsip. Ditemukan: $($parts.Count)."
}

$out = [System.IO.File]::Create($archive)
try {
    foreach ($part in $parts) {
        $bytes = [System.IO.File]::ReadAllBytes($part.FullName)
        $out.Write($bytes, 0, $bytes.Length)
    }
}
finally {
    $out.Dispose()
}

tar -tzf $archive | Out-Null
Write-Host "Arsip berhasil dirakit: $archive"
tar -xzf $archive -C $root
Write-Host "Source code sudah diekstrak ke folder ss-coffee."
