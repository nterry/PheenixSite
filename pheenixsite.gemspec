# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pheenixsite/version'

Gem::Specification.new do |gem|
  gem.name          = 'pheenix-site'
  gem.version       = PheenixSite::VERSION
  gem.authors       = ['Nicholas Terry']
  gem.email         = %w(webmaster@pheenixstudios.com)
  gem.description   = %q{Main site for Pheenix Game Studios}
  gem.summary       = %q{Main site for Pheenix Game Studios}
  gem.homepage      = 'http://pheenixstudios.com'
  gem.license       = ''

  gem.files         = Dir[ 'pheenixsite.gemspec', 'config.ru', 'Gemfile*', 'Rakefile', 'bin/*', 'lib/**/*.rb', 'public/**/*' ]
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})

  gem.add_dependency 'rake', '>=0.9.2.2'
  gem.add_dependency 'sinatra', '>= 1.4.0'
  #gem.add_dependency 'activerecord', '~> 4.1.1'
  #gem.add_dependency 'pg', '~> 0.17.1'
  gem.add_dependency 'json_pure', '~> 1.8.1'

  #gem.add_development_dependency 'bundler', '~> 1.2.1'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'ruby-debug19'
  gem.add_development_dependency 'rspec-mocks'
  gem.add_development_dependency 'simplecov', '=0.7.1'
  gem.add_development_dependency 'simplecov-vim', '=0.0.1'
end