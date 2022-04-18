# Ubuntu

https://sylabs.io/guides/3.0/user-guide/installation.html#install-the-debian-ubuntu-package-using-apt

In order to use Singularity on Ubuntu, please visit http://neuro.debian.net/ and use
the dropdown menus under "Get NeuroDebian" to select your Ubuntu version and pick a
USA server to download from. The below example will work for Ubuntu 20.04:

```Bash
wget -O- http://neuro.debian.net/lists/focal.us-nh.libre | sudo tee /etc/apt/sources.list.d/neurodebian.sources.list
sudo apt-key adv --recv-keys --keyserver hkps://keyserver.ubuntu.com 0xA5D32F012649A5A9
```

You can then install singularity for Ubuntu by doing:

```Bash
sudo apt install singularity-container
```

# CentOS

https://sylabs.io/guides/3.0/user-guide/installation.html#install-the-centos-rhel-package-using-yum

You need to enable the epel repo, and then you can install singularity:

```Bash
sudo yum install epel-release
sudo yum install singularity-runtime
```

# SST

GitHub LFS (Large File Storage) apparently has size limits and download limitations which seem counter-productive...
The pre-built SST singularity container will be provided to you and can be used in place of this repository
