# Created by Majed Al-Chatti
# https://github.com/alchatti/Powershell_General
function rms {
    #param([string[]] $files)
    $files = $args
    $counter = 0
    Write-Host "`n-- Deleting $($files.count) Files:`n"
    foreach ($file in $files) {
        if (Test-Path -LiteralPath $file -PathType leaf) {
            rm $file
            $counter++ 
            Write-Host "> File" -NoNewline
            Write-Host " $($file) " -NoNewline -Fore Green
            Write-Host "deleted"
        }
        else {
            Write-Host "! File" -NoNewline -Fore DarkYellow
            Write-Host " $($file) " -NoNewline -Fore Green
            Write-Host "does not exists" -Fore DarkYellow
        }
    }
    Write-Host "`n-- File deletion completed, deleted " -NoNewline
    Write-Host "$($counter)" -Fore Green -NoNewline
    Write-Host " out of " -NoNewline
    Write-Host "$($files.count)`n" -Fore Magenta
}