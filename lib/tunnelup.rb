require "tunnelup/version"
require 'rest-client'


require 'tunnelup/api/resource'
require 'tunnelup/api/subdomain'
require 'tunnelup/api/tunnel'
require 'tunnelup/api/user'
require 'tunnelup/cli'
require 'tunnelup/client'

module Tunnelup
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :api_token

    def initialize; end
  end
end
