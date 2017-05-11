require "tunnelup/version"

module Tunnelup
  autoload :Cli,    'tunnelup/cli'
  autoload :Client, 'tunnelup/client'

  module Api
    autoload :Base,   'tunnelup/api/base'
    autoload :User,   'tunnelup/api/user'
    autoload :Tunnel, 'tunnelup/api/tunnel'
  end
end
