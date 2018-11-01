# `commish`

[![Build Status](https://travis-ci.com/kbeckman/commish.svg?branch=master)](https://travis-ci.com/kbeckman/commish)
[![Maintainability](https://api.codeclimate.com/v1/badges/7102e7b6ac1bc759adcc/maintainability)](https://codeclimate.com/github/kbeckman/commish/maintainability)

[Rubocop](https://github.com/rubocop-hq/rubocop) came to _Serve and Protect_ your Ruby syntax... 
...but every cop has a Commissioner calling out orders from _the top_.

`commish` defines the default RuboCop linting rules for all Red Four Nine, LLC. Ruby projects.

> "Past heroism is no excuse for present misconduct." ~ Commissioner, Frank Regan (Blue Bloods)


## Installation

_These opinions are my own_, there's no immediate need to push this gem up to [rubygems.org](https://rubygems.org/). 

To source this gem from GitHub:

```ruby
gem 'commish', git: 'https://github.com/kbeckman/commish.git', tag: '<latest-tag>'
```

Then...

```shell
bundle install
```


## Usage

### Manual Setup

Add the following to your project's `.rubocop.yml` file:

```yaml
inherit_gem:
  commish: commish-defaults.yml
```

### Chef Cookbooks

Add the following to your project's `.rubocop.yml` file:

```yaml
inherit_from:
  - 'https://raw.githubusercontent.com/kbeckman/commish/<latest-tag>/commish-defaults.yml'
```


## References

* [Creating Inheritable RuboCop Defaults](https://github.com/rubocop-hq/rubocop/blob/master/manual/configuration.md#inheriting-configuration-from-a-dependency-gem)
* [RuboCop Docs](https://rubocop.readthedocs.io/)


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
