module Tunnelup
  module Api
    class Resource
      ENDPOINT = 'https://tunnelup.herokuapp.com/api/v1'

      def initialize()

      end

      def self.get(path)
        api_token = ::Tunnelup.configuration.api_token

        response = Faraday.new(
          url: "#{ENDPOINT}#{path}?api_token=#{api_token}",
          headers: {
            user_agent: "tunnelup-ruby/#{Tunnelup::VERSION}"
          }
        ).get

        JSON.parse(response)
      end
    end
  end
end
