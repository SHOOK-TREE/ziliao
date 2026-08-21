$ErrorActionPreference = 'Stop'

$parts = @(Get-ChildItem -LiteralPath $PSScriptRoot -File -Filter '3.zip.part*' | Sort-Object Name)
if ($parts.Count -ne 5) {
    throw "需要 5 个分卷，当前找到 $($parts.Count) 个。"
}

$destination = Join-Path $PSScriptRoot '3.zip'
$output = [System.IO.File]::Create($destination)
try {
    foreach ($part in $parts) {
        $input = [System.IO.File]::OpenRead($part.FullName)
        try {
            $input.CopyTo($output)
        }
        finally {
            $input.Dispose()
        }
    }
}
finally {
    $output.Dispose()
}

Write-Output "已生成：$destination"
