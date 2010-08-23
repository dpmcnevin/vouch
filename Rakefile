require "bundler"
require 'jeweler'
Bundler.setup

begin
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "vouch"
    gemspec.summary = "OAuth2 Server and Client Engines"
    gemspec.description = "OAuth2 Server and Client Engines"
    gemspec.email = "dpmcnevin@gmail.com"
    gemspec.homepage = "http://github.com/dpmcnevin/vouch"
    gemspec.authors = ["Daniel McNevin"]
    gemspec.add_dependency(%q<oauth2>, ["~> 0.0.13"])
    gemspec.add_dependency(%q<json>, ["~> 1.4.6"])
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end