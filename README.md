# pnwcsclubexample

A simple starter website for **Purdue University Northwest's** Computer Science club.  

## Developing and Building in Ubuntu (Recommended)

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

1. Boot up the VM if it's not already running:

```
$ vagrant up
```

2. SSH into the virtual machine.

```
$ vagrant ssh
```

3. Change the directory to the project root (the location of `Vagrantfile`):

```
vagrant@ubuntu-bionic: cd /vagrant
```

4. Start the development server and navigate to `192.168.50.4:4000` in your browser:

```
vagrant@ubuntu-bionic:/vagrant$ JEKYLL_ENV=development bundle exec jekyll serve --force_polling --host 192.168.50.4
```

### Creating a Build

1. Boot up the VM if it's not already running:

```
$ vagrant up
```

2. SSH into the virtual machine.

```
$ vagrant ssh
```

3. Change the directory to the project root (the location of `Vagrantfile`):

```
vagrant@ubuntu-bionic: cd /vagrant
```

4. Create a build to be deployed to a web server:

```
vagrant@ubuntu-bionic:/vagrant$ JEKYLL_ENV=production bundle exec jekyll build
```

This will create a `_site` folder in the project directory.  The contents of this folder are to be uploaded to a production web server.

### Deploying

If you need more help with deploying, read [this](https://surge.sh/help/deploying-a-jekyll-project) help article.

After creating a build (generating a `_site` folder in the project directory), we can deploy to [pnw.surge.sh](https://pnw.surge.sh/).

1. Boot up the VM if it's not already running:

```
$ vagrant up
```

2. SSH into the virtual machine.

```
$ vagrant ssh
```

3. Change the directory to the project root (the location of `Vagrantfile`):

```
vagrant@ubuntu-bionic: cd /vagrant
```

4. Deploy to [pnw.surge.sh](https://pnw.surge.sh/).

```
vagrant@ubuntu-bionic:/vagrant$ surge _site 
```

It will ask you to login using email `pnwsurgesh@mtk.me`.  Replace the randomly generated domain with `pnw.surge.sh`.

## Resources

### Virtualbox
- [Downloads](https://www.virtualbox.org/wiki/Downloads)

### Vagrant
- [Docs](https://www.vagrantup.com/docs/index.html)
- [Step-by-step Tutorial](https://www.vagrantup.com/intro/getting-started/index.html)
- [Teardown Methods](https://www.vagrantup.com/intro/getting-started/teardown.html)

### Jekyll
- [Docs](https://jekyllrb.com/docs/)
- [Step-by-step Tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/)

### Surge
- [Getting Started with Surge](https://surge.sh/help/getting-started-with-surge)
- [Deploying a Jekyll Project to Surge](https://surge.sh/help/deploying-a-jekyll-project)

### Bootstrap
- [Documentation](https://getbootstrap.com/docs/4.4/getting-started/introduction/)