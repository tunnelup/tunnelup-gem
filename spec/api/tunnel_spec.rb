require 'spec_helper'

describe Tunnelup::Api::Tunnel do
  let!(:client) do
    # Tunnelup::Client.new(
    #   api_key: ENV['API_KEY']
    # )
  end

  describe '.all' do
    let(:request) do
      VCR.use_cassette('get_all_tunnels_success') do
        Tunnelup::Api::Tunnel.all
      end
    end

    it 'returns an array of Tunnelup::Api::Tunnel objects' do
      expect(request).to eq ''
    end
  end

  describe '.create' do

  end

  describe '.show' do

  end
end
