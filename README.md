# Rack::SlashEnforce

A rack middleware to enforce appending or removing trailing slashes from URLs.

## Setup

```console
$ gem install rack-slashenforce
```

#### Bundler users
If you use Bundler, you will need to add it to your *Gemfile*.

```ruby
gem 'rack-slashenforce', :require => 'rack'
```

## Usage

Add one of the following lines to *config.ru*:

To enforce a trailing slash on all urls without a period in them:

```ruby
use Rack::AppendTrailingSlash
```

To enforce no trailing slashes on any urls:

```ruby
use Rack::RemoveTrailingSlashes
```

For a more robust solution, see [rack-rewrite](https://github.com/jtrupiano/rack-rewrite).


> Copyright (c) 2012 Tyler Kellen. See LICENSE for further details.