module Tunnelup
  module Api
    class Resource
      ENDPOINT = 'https://tunnelup.herokuapp.com/api/v1'

      def initialize()

      end

      def self.get(path)
        api_token = ::Tunnelup.configuration.api_token

        JSON.parse RestClient.get("#{ENDPOINT}#{path}?api_token=#{api_token}", accept: :json)
      end
    end
  end
end
