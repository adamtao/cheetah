# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cheetah_mail/version"

Gem::Specification.new do |s|
  s.name        = "cheetah_mail"
  s.version     = CheetahMail::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dan Rodriguez", "Adam Anderson"]
  s.email       = ["theoperand@gmail.com", "adam@makeascene.com"]
  s.homepage    = ""
  s.summary     = %q{A simple library for integrating with the CheetahMail API}
  s.description = %q{A simple library for integrating with the CheetahMail API}

  s.rubyforge_project = "cheetah_mail"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'fakeweb'

  s.add_development_dependency 'resque'
  # s.add_runtime_dependency 'system_timer'
end
