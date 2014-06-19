# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "feathers/version"

Gem::Specification.new do |s|
  s.name        = "feathers"
  s.version     = Feathers::VERSION
  s.authors     = ["Kelli Shaver"]
  s.email       = ["kelli@kellishaver.com"]
  s.homepage    = "https://github.com/kellishaver/feathers"
  s.summary     = %q{Lightweight CSS boilerplate with sensible defaults}
  s.description = %q{Feathers is a minimalist CSS reset and boilerplate with optional rules that can be 'layered in' to apply sensible defaults to common widgets, such as navigation, forms, buttons, and menus}
  s.license     = "MIT"

  s.rubyforge_project = "feathers"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "rails", ">= 3.0"
  #s.add_development_dependency "bundler", "~> 1.3"
  #s.add_development_dependency "rake"
end
