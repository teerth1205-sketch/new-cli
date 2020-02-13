require_relative "./cli/version"

require 'bundler/setup'
Bundler.require

require_relative "./cli/cli"

module New
  module Cli
    class Error < StandardError; end
    # Your code goes here...
  end
end
