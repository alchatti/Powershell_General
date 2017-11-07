# Touch & Remove
## Information & Usage 

Create and remove multiple files using one single PowerShell command with colored informative output.


There are two function stored in each file:
* `touch.ps1` to creates multiple empty file using `New-Item` powerShell command
```sh
touch file1.txt file2.zip file3.txt file4
```
* `rms.ps1` to remove multiple specified files `rm` PowerShell command
```sh
rms file1.txt file2.zip file3.txt file4
```
_`*` doesn't work, use `rm` instead_

### To setup as Global Function 
* You need to to add the functions to your PowerShell profile
```sh
notepad $profile
```
* Copy and past the content of each file `touch.ps1` , `rms.ps1` as required
* Save file 
* Close and reopen PowerShell Window

## Change Log

##### 1.0.0 2017-11-07 - Release