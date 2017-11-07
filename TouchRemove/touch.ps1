# Created by Majed Al-Chatti
# https://github.com/alchatti/Powershell_General
function touch {
    #param([string[]] $files)
    $files = $args
    $counter = 0
    Write-Host "`n-- Creating $($files.count) Files:`n"
    foreach ($file in $files) {
        if (Test-Path -LiteralPath $file -PathType leaf) {
            Write-Host "! File" -NoNewline -Fore DarkYellow
            Write-Host " $($file) " -NoNewline -Fore Green
            Write-Host "already exists" -Fore DarkYellow
        }
        else {
            ni $file
            $counter++   
        }
    }
    Write-Host "`n-- File creation completed, created " -NoNewline
    Write-Host "$($counter)" -Fore Green -NoNewline
    Write-Host " out of " -NoNewline
    Write-Host "$($files.count)`n" -Fore Magenta
}