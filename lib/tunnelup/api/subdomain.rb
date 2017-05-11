module Tunnelup
  module Api
    class Subdomain < Resource
      def self.all
        get '/subdomains'
      end
    end
  end
end
