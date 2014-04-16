# vagrant-softwarefactory

A simple repo that let user build the Software Factory with vagrant

## Vagrant Box

The base box used is a Wheezy image with Puppet installed.

The one the test are run against, belongs to @sbadia. (Thank you).
It is available at : http://pub.sebian.fr/pub/vagrant/debian-wheezy-amd64.box

To install it simply run : `vagrant box add softwarefactory http://pub.sebian.fr/pub/vagrant/debian-wheezy-amd64.box`

## Getting the puppet modules

Vagrant let us provision the boxes with Puppet. This allow one to directly log in a fully provisioned box.
The softwarefactory puppet module is what so called a meta-module, it makes use of base modules to deploy itself.

In order to keep track and download all the base module, [r10k](https://github.com/adrienthebo/r10k.git) is used.
This was for the technical details. But to get the module simply `./run.sh` and eveything will be taken care of.

*Note*: r10k beeing a gem, rubygems needs to be installed.

## Now what ?

Create a folder somewhere (ie. `/tmp/softwarefactory`) and clone this repo. Then simply run (adapt it to your needs) `./run.sh` and you're ready to use `vagrant up`.
