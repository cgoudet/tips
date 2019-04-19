# Python executables on windows

It is not possible to compile python code on unix to make it run on windows.
Instead it is necessary to install a windows virtual machine.
Hopefully, [free windows VM](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/) are available.

Once you have installed windows, intall python by downloading an executable at [Python mainpage](https://www.python.org/downloads/windows/).
I personnaly use [Python3.5.2](https://www.python.org/ftp/python/3.5.2/python-3.5.2-amd64.exe).
During the installation, ensure that you add python to the PATH.
By default, users are not allowed to install globally libraries using pip.
To remove this restriction, open a python instance, locate it in the task manager and go to the correponding directory.
Go one level up and give permission to all users to modify the previous folder.

Now we can install libraries.
Open a command prompt and update pip and install virtualenv.
Here, the version of virtualenv is fixed as later versions show a bug on windows.
```
pip install --upgrade pip
pip install virtualenv==16.1.0 
```


Now go into your package repository, create a virtualenv and install the libraries.
```
virtualenv venv
venv\Script\activate
pip install -r requirements.txt
```

The pyinstaller library version 3.3.1 has trouble with windows 10.
Instead, download the development version (within the virtualenv).
```
pip install https://github.com/pyinstaller/pyinstaller/archive/develop.tar.gz
```

Even with this versio lacks the linking of some windows dll.
First install Windows sdK available at this address : https://developer.microsoft.com/fr-fr/windows/downloads/windows-10-sdk.
Then copy the DLL from the local repository C:\Program Files (x86)\Windows Kits\10\Redist\ucrt\DLLs\x64 into the root of the python repository.


Now you can create your exe file.
```
pyinstaller --onefile script.py
```

The file script.exe will then be located under a dist directory.
