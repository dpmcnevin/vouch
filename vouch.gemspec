# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vouch}
  s.version = "0.0.3.pre1"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel McNevin"]
  s.date = %q{2010-08-22}
  s.description = %q{OAuth2 Server and Client Engines}
  s.email = %q{dpmcnevin@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.md"
  ]
  s.files = [
    "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "app/controllers/vouch/auth_controller.rb",
     "config/routes.rb",
     "lib/generators/vouch/client_generator.rb",
     "lib/generators/vouch/templates/oauth.yml",
     "lib/vouch.rb",
     "lib/vouch/client.rb",
     "lib/vouch/engine.rb",
     "lib/vouch/version.rb",
     "vouch.gemspec"
  ]
  s.homepage = %q{http://github.com/dpmcnevin/vouch}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{OAuth2 Server and Client Engines}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth2>, ["~> 0.0.13"])
    else
      s.add_dependency(%q<oauth2>, ["~> 0.0.13"])
    end
  else
    s.add_dependency(%q<oauth2>, ["~> 0.0.13"])
  end
end

