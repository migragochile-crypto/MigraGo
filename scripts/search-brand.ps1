$root = Get-Location
$patterns = @('migracionchile','MigracionChile','MigraciónChile','migracion-chile','migrago')
Get-ChildItem -Path $root -Recurse -Force -File -ErrorAction SilentlyContinue |
    Where-Object { $_.FullName -notmatch '\\node_modules\\' -and $_.FullName -notmatch '\\.next\\' } |
    ForEach-Object {
        $content = $null
        try { $content = Get-Content -Path $_.FullName -Raw -ErrorAction Stop } catch { return }
        foreach ($pattern in $patterns) {
            if ($content -match [regex]::Escape($pattern)) {
                Write-Output "$($_.FullName):$pattern"
                break
            }
        }
    } | Select-Object -First 200 | Format-Table -AutoSize
