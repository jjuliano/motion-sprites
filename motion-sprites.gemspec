# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion_sprites/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Joel Bryan Juliano"]
  gem.email         = ["joelbryan.juliano@gmail.com"]
  gem.description   = "Easily load sprite sheet images for RubyMotion"
  gem.summary       = "Easily load sprite sheet images for RubyMotion"
  gem.homepage      = "http://jjuliano.github.com/motion-sprites"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "motion-sprites"
  gem.require_paths = ["lib"]
  gem.version       = MotionSprites::VERSION
end