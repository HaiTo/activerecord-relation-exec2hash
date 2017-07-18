# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord/relation/exec2hash/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-relation-exec2hash"
  spec.version       = Activerecord::Relation::Exec2hash::VERSION
  spec.authors       = ["HaiTo"]
  spec.email         = ["rilinwing@gmail.com"]

  spec.summary       = 'you can `AwesomeModel.all.exec2hash => [{id: 1, key: value}, ...]`'
  spec.description   = 'you can `AwesomeModel.all.exec2hash => [{id: 1, key: value}, ...]`'
  spec.homepage      = "https://github.com/HaiTo/activerecord-relation-exec2hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'sqlite3'

  spec.add_dependency 'activerecord', '>= 4.2.0'
end
