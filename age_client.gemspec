# frozen_string_literal: true

require_relative "lib/age_client/version"

Gem::Specification.new do |spec|
  spec.name = "age_client"
  spec.version = AgeClient::VERSION
  spec.authors = ["David Marshall"]
  spec.email = ["depmarshall@gmail.com"]

  spec.summary = "Ruby client for Apache Age using Rust native extensions"
  spec.homepage = "https://github.com/thedavemarshall/age_client_ruby"
  spec.license = "Apache-2.0"
  spec.required_ruby_version = ">= 3.0.0"
  spec.required_rubygems_version = ">= 3.3.11"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage + "/blob/main/CHANGELOG.md"

  spec.files = Dir["lib/*.rb", "lib/age_client*.rb", "ext/**/*.{rs,rb,toml}", "Cargo.{lock,toml}", "LICENSE", "README.md", "CHANGELOG.md"]

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/age_client/Cargo.toml"]
end
