# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sped/nfe/version'

Gem::Specification.new do |spec|
  spec.name = 'sped-nfe'
  spec.version = SPED::NFe::VERSION
  spec.authors = ['Tiago Cássio']
  spec.email = ['tiagocassio@outlook.com']

  spec.summary = 'API para comunicação entre o emitente de NFe e os serviços'\
                 'dos SEFAZ estaduais inteiramente construído em Ruby.'
  spec.homepage = 'http://github.com/sped-ruby/sped-nfe'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) {|f| File.basename(f)}
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'libxml-ruby', '~> 2.9'
  spec.add_runtime_dependency 'nokogiri'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
