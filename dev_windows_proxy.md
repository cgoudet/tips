# Contournement de proxy sur windows

 ## python
Creating a virtualenv seems to require a connexion, which is forbidden by the proxy.

```bash
set http_proxy=http://proxy.int.dns:8888
set https_proxy=http://proxy.int.dns:8888
virtualenv venv
```

This does not seems enough to allow pip to download packages.
Instread use the following.
``` bash
pip --trusted-host pypi.org --trusted-host files.pythonhosted.org --proxy http://proxy.int.dns:8888 install <package>
```
