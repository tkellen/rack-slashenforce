require File.dirname(__FILE__)+'/lib/rack-slashenforce'

Gem::Specification.new do |gem|
  gem.name          = 'rack-slashenforce'
  gem.version       = Rack::SlashEnforce.version
  gem.summary       = 'A rack middleware to enforce appending or removing trailing slashes.'
  gem.description   = gem.description
  gem.author        = 'Tyler Kellen'
  gem.email         = 'tyler@sleekcode.net'
  gem.homepage      = 'https://github.com/tkellen/rack-slashenforce/'
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'rack'
end