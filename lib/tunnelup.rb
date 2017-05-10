require "tunnelup/version"

module Tunnelup
  autoload :Cli, 'tunnelup/cli'

  module Api
    autoload :User,   'tunnelup/api/user'
    autoload :Tunnel, 'tunnelup/api/tunnel'
  end
end
