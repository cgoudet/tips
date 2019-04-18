# Virtualbox : Allowing Copy-Paste Between Host and Guest

By default, virtualbox does not allow to share copy-paste memory between the host and the guest machines.
The feature is contained in an additionnal package provide by Oracle.
The package is not directly available in ubuntu repositories.
However, a package have been created to download the package from oracle servers and install it automatically.
Just call on the host machine

```
sudo apt-get install virtualbox-ext-pack
```

On the guest side, install essentials and dkms.
```
sudo apt-get install build-essential dkms
```

Then install guest addtions from virtual box.
From the menu bar of the VM window, insert guest addtion CD.
Go to the CD reportory and install the library.
```
sudo ./VBoxLinuxAdditions.run
```

Finally, the option can be switched on in the menu of the guest machine window.
Reboot the VM and copy paste should now work.
