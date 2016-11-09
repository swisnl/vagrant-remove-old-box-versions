**The code for this plugin has been merged into Vagrant and is released in `1.9.0`. The command is ``vagrant box prune``. See the [pull request](https://github.com/mitchellh/vagrant/pull/7978).**

# Vagrant remove old box versions plugin

This plugin enables you to automatically remove old vagrant boxes from you host. Just run ``vagrant remove-old-versions`` and it will check your downloaded boxes and remove every box that is not the lastest downloaded version.

Internally it uses ```vagrant box list``` to get a list of boxes, and ```vagrant box remove --box-version  xxx --provider xxx``` so it still has all safeguards you expect from vagrant.

[![Gem Version](https://badge.fury.io/rb/vagrant-remove-old-box-versions.svg)](https://badge.fury.io/rb/vagrant-remove-old-box-versions) [![Gem](https://img.shields.io/gem/dv/vagrant-remove-old-box-versions/1.1.0.svg?maxAge=2592000)](https://rubygems.org/gems/vagrant-remove-old-box-versions)

## Installation

```
vagrant plugin install vagrant-remove-old-box-versions
```

## Usage

```
Usage: vagrant remove-old-versions [options]

Options:

    -p, --provider PROVIDER          The specific provider type for the boxes to destroy.
    -n, --dry-run                    Only print the boxes that would be removed.
        --name NAME                  The specific box name to destroy.
    -f, --force                      Destroy without confirmation even when box is in use.
```

## Contributing

This plugin is built and maintained by [Björn Brala](https://www.swis.nl/over-ons/bjorn-brala)
Bug reports and pull requests are welcome on GitHub at [swisnl/vagrant-remove-old-box-versions](https://github.com/swisnl/vagrant-remove-old-box-versions).


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Changelog

### [1.1.0] 2016-03-16

* `---dry-run` and `--name` option added by @danielpanteleit

### [1.0.0] 2016-01-13

* Initial release.
