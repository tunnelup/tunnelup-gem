require "tunnelup/version"
require 'rest-client'

module Tunnelup
  autoload :Cli,    'tunnelup/cli'
  autoload :Client, 'tunnelup/client'

  module Api
    autoload :Resource,  'tunnelup/api/resource'
    autoload :Subdomain, 'tunnelup/api/subdomain'
    autoload :Tunnel,    'tunnelup/api/tunnel'
    autoload :User,      'tunnelup/api/user'
  end
end
