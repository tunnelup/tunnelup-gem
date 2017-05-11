module Tunnelup
  module Api
    class Resource
      ENDPOINT = 'https://tunnelup.herokuapp.com/api/v1'

      def initialize()

      end

      def self.get(path)
        JSON.parse RestClient.get("#{ENDPOINT}#{path}?api_token=#{ENV['API_TOKEN']}", accept: :json)
      end
    end
  end
end
