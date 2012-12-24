# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chunk/version'

Gem::Specification.new do |gem|
  gem.name          = 'chunk'
  gem.version       = Chunk::VERSION
  gem.authors       = ['Ben Kreeger']
  gem.email         = ['ben@kree.gr']
  gem.description   = %q{Minecraft command-line helpers.}
  gem.summary       = %q{Minecraft command-line helpers.}
  gem.homepage      = 'http://github.com/kreeger/chunk'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'thor'
  gem.add_development_dependency 'rake'
end
