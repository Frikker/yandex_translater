# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex_translater/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex_translater"
  spec.version       = YandexTranslater::VERSION
  spec.authors       = ["Frikker"]
  spec.email         = ["stolpnikk.97@gmail.com"]

  spec.summary       = 'This is Example!'
  spec.homepage      = "https://github.com/Frikker/yandex-translate"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
