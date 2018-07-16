# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc 'Defines ALL tasks required for a successful CI build...'
task default: %w[ci:rubocop spec]

namespace :ci do
  desc 'Invokes Rubocop for CI'
  task :rubocop do
    sh 'bundle exec rubocop'
  end
end
