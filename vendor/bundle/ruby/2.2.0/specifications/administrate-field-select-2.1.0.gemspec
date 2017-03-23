# -*- encoding: utf-8 -*-
# stub: administrate-field-select 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate-field-select"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Rich Daley"]
  s.date = "2016-07-27"
  s.description = "Adds an Administrate::Field::SelectBasic for creating dropdown selects in your dashboards."
  s.email = ["rich@fishpercolator.co.uk"]
  s.homepage = "https://github.com/fishpercolator/administrate-field-select"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Dropdown/select fields for Administrate dashboards"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<administrate>, [">= 0.1.5", "~> 0.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.11"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
    else
      s.add_dependency(%q<administrate>, [">= 0.1.5", "~> 0.1"])
      s.add_dependency(%q<bundler>, ["~> 1.11"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<administrate>, [">= 0.1.5", "~> 0.1"])
    s.add_dependency(%q<bundler>, ["~> 1.11"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
  end
end
