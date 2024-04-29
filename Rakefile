# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"

Minitest::TestTask.create

require "standard/rake"

require "rb_sys/extensiontask"

task build: :compile

GEMSPEC = Gem::Specification.load("age_client.gemspec")

RbSys::ExtensionTask.new("age_client", GEMSPEC) do |ext|
  ext.lib_dir = "lib/age_client"
end

task default: %i[compile test standard]
