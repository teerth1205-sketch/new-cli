require_relative "./cli/version"

require 'bundler/setup'
Bundler.require

require_relative "./cli/cli"
require_relative "./cli/list"
require_relative "./cli/scraper"


module New
  module Cli
    class Error < StandardError; end
    # Your code goes here...
  end
end
