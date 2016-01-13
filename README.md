# Vagrant remove old box versions plugin

This plugin enables you to automatically remove old vagrant boxes from you host. Just run ``vagrant remove-old-versions`` and it will check your downloades boxes and remove every box that is not the lastest downloaded version.


## Installation


```
vagrant install plugin vagrant-remove-old-box-versions
```

## Usage

```
Usage: vagrant remove-old-versions [options]

Options:

    -p, --provider PROVIDER          The specific provider type for the boxes to destroy.
    -f, --force                      Destroy without confirmation even when box is in use.
```

## Contributing

This plugin is built and maintained by [Björn Brala](https://www.swis.nl/)
Bug reports and pull requests are welcome on GitHub at [swisnl/vagrant-remove-old-box-versions](https://github.com/swisnl/vagrant-remove-old-box-versions).


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

