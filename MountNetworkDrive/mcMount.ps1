Write-Output $args[0]

If($args[0] -ne $null){
    Write-Output "Password Hashing"
    Read-host -Prompt 'Input Password to be Secured' -assecurestring | ConvertFrom-SecureString | out-file "mcMount.sts"
}
else{
    Write-Output "Mount Operation Started"
    $password = Get-Content "mcMount.sts" | ConvertTo-SecureString
    $creds = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList "alchatti\majed",$password
    New-PSDrive -Name "U" -Root "\\server\path1" -PSProvider "FileSystem"  -Persist -Scope "Global"  -Credential $creds
    New-PSDrive -Name "N" -Root "\\server\path2" -PSProvider "FileSystem"  -Persist -Scope "Global"  -Credential $creds
    New-PSDrive -Name "S" -Root "\\server\path3" -PSProvider "FileSystem"  -Persist -Scope "Global"  -Credential $creds
    Write-Output "Mount Operation Completed"
}