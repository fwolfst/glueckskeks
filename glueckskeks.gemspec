# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glueckskeks/version'

Gem::Specification.new do |spec|
  spec.name          = "glueckskeks"
  spec.version       = Glueckskeks::VERSION
  spec.authors       = ["Felix Wolfsteller"]
  spec.email         = ["felix.wolfsteller@gmail.com"]

  spec.summary       = %q{Use grammar(ish) files to create random phrases.}
  spec.description   = %q{Consume files that create a cheap grammar to create phrases, which might aid e.g. as password hint.}
  spec.homepage      = "https://github.com/fwolfst/glueckskeks"
  spec.licenses      = ['GPL-3.0+']

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
