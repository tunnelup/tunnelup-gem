require "tunnelup/version"

module Tunnelup
  module Api
    autoload :User,   'tunnelup/api/user'
    autoload :Tunnel, 'tunnelup/api/tunnel'
  end
end
