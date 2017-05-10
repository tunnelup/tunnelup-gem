require 'spec_helper'

describe Tunnelup::Api::User do
  describe '.authenticate' do
    context 'success' do
      let(:authentication) do
        Tunnelup::Api::User.authenticate(
          email: 'demo@example.com',
          password: 'password',
        )
      end

      it 'returns a Tunnelup::Api::User object' do
        expect(authentication).to be_kind_of(Tunnelup::Api::User)
      end

      describe 'returned user' do
        subject(:user) { authentication }

        it { expect(user.email).to eq 'demo@example.com' }
        it { expect(user.api_token).not_to be_nil }
      end
    end
  end
end
