require File.expand_path("../lib/vouch/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "vouch"
  s.version     = Vouch::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daneil McNevin"]
  s.email       = ["dpmcnevin@gmail.com"]
  s.homepage    = "http://github.com/dpmcnevin/vouch"
  s.summary     = "OAuth2 Server and Client Engines"
  s.description = "OAuth2 Server and Client Engines"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "vouch"

  # If you have other dependencies, add them here
  # s.add_dependency "authlogic", "~> 2.1.5"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["newgem"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end

