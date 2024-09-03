# frozen_string_literal: true

require_relative "lib/henshin_belt/version"

Gem::Specification.new do |spec|
  spec.name = "henshin-belt"
  spec.version = HenshinBelt::VERSION
  spec.authors = ["kotarominami"]
  spec.email = ["kotaroisme@gmail.com"]

  spec.summary = "Hensin Belt is a Grape middleware to connect your API."
  spec.description = "Hensin Belt is a Grape middleware to connect your API resources with your API authenticator."
  spec.homepage = "https://github.com/kotaroisme/henshin-belt"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["source_code_uri"] = "https://github.com/kotaroisme/henshin-belt"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  spec.add_development_dependency 'bundler', '~> 2.5.18'
  spec.add_development_dependency 'rake', '~> 13.2.1'
  spec.add_development_dependency 'rspec', '~> 3.13.0'
end
