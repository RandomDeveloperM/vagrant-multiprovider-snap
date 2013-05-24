# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "vagrant-snap/version"

Gem::Specification.new do |s|
  s.name        = "vagrant-snap"
  s.version     = Vagrant::Snap::VERSION
  s.authors     = ["Jon Topper"]
  s.email       = ["jon@scalefactory.com"]
  s.homepage    = ""
  s.summary     = %q{Multi-provider snapshots for Vagrant}
  s.description = %q{Multi-provider snapshots for Vagrant}

  s.rubyforge_project = "vagrant-snap"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
