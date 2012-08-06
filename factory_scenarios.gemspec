# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{factory_scenarios}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Collin Miller"]
  s.date = %q{2011-02-08}
  s.description = %q{TODO: longer description of your gem}
  s.email = %q{collintmiller@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/controllers/factory_scenarios_controller.rb",
    "app/models/scenario.rb",
    "app/views/factory_scenarios/index.html.haml",
    "config/routes.rb",
    "factory_scenarios.gemspec",
    "lib/factory_scenarios.rb",
    "lib/factory_scenarios/engine.rb",
    "lib/factory_scenarios/storage.rb",
    "test/helper.rb",
    "test/test_factory_scenarios.rb"
  ]
  s.homepage = %q{http://github.com/collin/factory_scenarios}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{TODO: one-line summary of your gem}
  s.test_files = [
    "test/helper.rb",
    "test/test_factory_scenarios.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_runtime_dependency(%q<dkastner-moneta>, ["1.2.0"])
      s.add_runtime_dependency(%q<factory_girl>, ["~> 2.0.0.beta1"])
      s.add_runtime_dependency(%q<warden>, ["~> 1.0"])
      s.add_runtime_dependency(%q<haml>, ["~> 3.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["> 3.0"])
      s.add_dependency(%q<dkastner-moneta>, ["1.2.0"])
      s.add_dependency(%q<factory_girl>, ["~> 2.0.0.beta1"])
      s.add_dependency(%q<warden>, ["~> 1.0"])
      s.add_dependency(%q<haml>, ["~> 3.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0"])
    s.add_dependency(%q<dkastner-moneta>, ["1.2.0"])
    s.add_dependency(%q<factory_girl>, ["~> 2.0.0.beta1"])
    s.add_dependency(%q<warden>, ["~> 1.0"])
    s.add_dependency(%q<haml>, ["3.1.6"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["1.1.4"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

