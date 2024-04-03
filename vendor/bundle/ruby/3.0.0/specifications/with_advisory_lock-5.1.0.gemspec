# -*- encoding: utf-8 -*-
# stub: with_advisory_lock 5.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "with_advisory_lock".freeze
  s.version = "5.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/ClosureTree/with_advisory_lock/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/ClosureTree/with_advisory_lock", "rubyspecs_mfa_required" => "true", "source_code_uri" => "https://github.com/ClosureTree/with_advisory_lock", "yard.run" => "yri" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Matthew McEachen".freeze, "Abdelkader Boudih".freeze]
  s.date = "2024-01-21"
  s.description = "Advisory locking for ActiveRecord".freeze
  s.email = ["matthew+github@mceachen.org".freeze, "terminale@gmail.com".freeze]
  s.homepage = "https://github.com/ClosureTree/with_advisory_lock".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7.0".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Advisory locking for ActiveRecord".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 6.1"])
    s.add_runtime_dependency(%q<zeitwerk>.freeze, [">= 2.6"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_development_dependency(%q<maxitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<yard>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 6.1"])
    s.add_dependency(%q<zeitwerk>.freeze, [">= 2.6"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<maxitest>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, [">= 0"])
  end
end
