
require 'spec_helper'

describe Tunnelup::Api::Subdomain do
  describe '.all' do
    let(:request) do
      VCR.use_cassette('get_all_subdomains_success') do
        Tunnelup::Api::Subdomain.all
      end
    end

    it 'returns an array of Tunnelup::Api::Subdomain objects' do
      expect(request).to eq ''
    end
  end

  describe '.create' do

  end

  describe '.show' do

  end
end
