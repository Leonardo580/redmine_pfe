# -*- encoding: utf-8 -*-
# stub: roadie-rails 3.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "roadie-rails".freeze
  s.version = "3.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Magnus Bergmark".freeze]
  s.date = "2023-10-19"
  s.description = "Hooks Roadie into your Rails application to help with email generation.".freeze
  s.email = ["magnus.bergmark@gmail.com".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "Changelog.md".freeze, "LICENSE.txt".freeze]
  s.files = ["Changelog.md".freeze, "LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "http://github.com/Mange/roadie-rails".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Making HTML emails comfortable for the Rails rockstars".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 5.1", "< 8.0"])
    s.add_runtime_dependency(%q<roadie>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.2"])
    s.add_development_dependency(%q<rails>.freeze, [">= 5.1", "< 8.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_development_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<standard>.freeze, [">= 0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 5.1", "< 8.0"])
    s.add_dependency(%q<roadie>.freeze, ["~> 5.0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 2.2"])
    s.add_dependency(%q<rails>.freeze, [">= 5.1", "< 8.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_dependency(%q<rspec-collection_matchers>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<standard>.freeze, [">= 0"])
  end
end
