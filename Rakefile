# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

desc 'Defines ALL tasks required for a successful CI build...'
task default: %w[ci:rubocop spec]

namespace :ci do
  desc 'Prints ENV_VAR context...'
  task :env do
    sh 'env'
  end

  desc 'Invokes Rubocop...'
  task :rubocop do
    sh 'bundle exec rubocop'
  end
end

namespace :project do
  desc 'Build project gem package...'
  task :build do
    sh 'gem build commish.gemspec --strict'
  end

  desc 'Cleanup build files...'
  task :clean do
    sh 'rm commish-*.gem'
  end
end
