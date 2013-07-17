# Vagrant Responsive Design Workflow

In his book *Responsive Design Workflow*, @stephenhay shows his workflow for responsive design using a couple of tools. This project provides you with a local dev server that comes with all these tools pre-installed.

This project works with Vagrant and Ansible. Currently it works on OS X and Linux, but not on Windows (Ansible is not supported on Windows).

## Installation

First, install [VirtualBox](https://www.virtualbox.org/wiki/Downloads). Then, install [Vagrant](http://downloads.vagrantup.com/).

Then, open your terminal and install Ansible (don't enter the `$`-sign, it just indicates your command line prompt):

```bash
$ (sudo) pip install ansible
```

If it says that you don't have `pip` installed, use `easy_install` to install `pip`:

```bash
$ (sudo) easy_install install pip
```

Make and goto the directory where you want this dev server to live, e.g.:

```bash
$ mkdir ~/Vagrant/
$ cd ~/Vagrant/
```

Download [Vagrant Responsive Design Workflow](https://github.com/leonderijke/Vagrant-Responsive-Design-Workflow/archive/master.zip) an unzip it in the directory you just made.

Alternatively, clone this repository into the directory you just made:

```bash
$ git clone git@github.com:leonderijke/Vagrant-Responsive-Design-Workflow.git
```

This will create a `Vagrant-Responsive-Design-Workflow` directory.

Go back to your terminal and move to the `Vagrant-Responsive-Design-Workflow` directory:

```bash
cd Vagrant-Responsive-Design-Workflow/
```

Then start the dev server with:

```bash
$ vagrant up
```

This will download a Ubuntu 12.04 Linux distribution, make a virtual machine in VirtualBox and installs all necessary programs.

## Usage

In `Vagrant-Responsive-Design-Workflow/srv/projects/` you can place you projects and their files. It will be synced to the virtual machine and overthere this directory is available in `/srv/projects/`.

Stopping the server:

```bash
$ vagrant halt
```

(Re)starting the server:

```bash
$ vagrant start
```

## TODO

Add phantomjs and casperjs packages. Maybe add Sass and Compass.

## License

MIT License, see [LICENSE.txt](LICENSE.txt)