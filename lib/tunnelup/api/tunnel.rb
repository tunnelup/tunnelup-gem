module Tunnelup
  module Api
    class Tunnel < Resource
      def self.all
        get '/tunnels'
      end

      def self.create(); end
      def self.find(); end
    end
  end
end
