# Mount Network Drive
## Information & Usage 

A Script to mount Network folder as a drive in explorer. It offers two mode, the first to create a secured password file to be used for mounting.

### Create a Secured Password File

This mode is triggered when supplying a command line arguments of any value.

```sh
mcMount.ps1 test
```

the user will be prompted to enter the password which will be secured and stored in `mcMount.sts` in the same directory.

### Mount Operation

Just run the script without any argument

```sh
mcMount.ps1
```

## Change Log

##### 2017-07-17 - Release