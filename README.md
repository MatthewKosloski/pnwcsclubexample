# pnwcsclubexample

A simple starter website for Purdue Northwest's Computer Science club.  

## Developing in Ubuntu (Recommended)

Installing Jekyll on Windows is rather tedious due to all of its dependencies.  We can get around this by developing inside of an Ubuntu
virtual machine created by [Vagrant](https://www.vagrantup.com/).

### Prerequisites

To develop in an Ubuntu virtual machine, you must install two things:

1. _[Vagrant](https://www.vagrantup.com/downloads.html) for Windows._  Vagrant is software that provides a command-line interface that allows you to quickly spin up a VM.  Essentially, you create a folder, write a VM configuration in a `Vagrantfile` inside that folder, and run `vagrant up` to boot up the VM.

2. _A virtual machine [provider](https://www.vagrantup.com/intro/getting-started/providers.html)._  I recommend using [Virtualbox](https://www.virtualbox.org/).  The provider must be installed before Vagrant.

### Creating the Virtual Machine

Open a command-line, navigate to the root directory, and run this:

```
$ vagrant up
```

This boots up a virtual machine using the information supplied to the `Vagrantfile`.

When you are done developing and would like to power down the virtual machine, you have a couple of different [teardown](https://www.vagrantup.com/intro/getting-started/teardown.html) methods to choose from.  I recommend using the **Halting** method, which frees up the resources used by the virtual machine without deleting it.

### Development

1. Start up the virtual machine.

```
$ vagrant up
```

1. SSH into the virtual machine and change the directory to the project root (the location of `Vagrantfile`):

```
$ vagrant ssh && cd ./vagrant
```

2. Start the development server and navigate to `192.168.50.4:4000` in your browser:

```
$ bundle exec jekyll serve --force_polling --host 192.168.50.4
```