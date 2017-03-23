# -*- encoding: utf-8 -*-
# stub: administrate-field-carrierwave 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "administrate-field-carrierwave"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michele Gerarduzzi"]
  s.date = "2016-11-30"
  s.description = "A plugin to upload Carrierwave attachments in Administrate"
  s.email = ["michele.gerarduzzi@gmail.com"]
  s.homepage = "https://github.com/z-productions/administrate-field-carrierwave"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "A plugin to upload Carrierwave attachments in Administrate"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<administrate>, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<rails>, [">= 4.2"])
    else
      s.add_dependency(%q<administrate>, ["~> 0.3.0"])
      s.add_dependency(%q<rails>, [">= 4.2"])
    end
  else
    s.add_dependency(%q<administrate>, ["~> 0.3.0"])
    s.add_dependency(%q<rails>, [">= 4.2"])
  end
end
