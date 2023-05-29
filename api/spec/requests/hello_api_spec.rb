require 'rails_helper'

RSpec.describe 'HelloApi' do
  describe 'GET /hello_api' do
    it 'returns hello' do
      get '/api/v1/hello'
      expect(response.body).to eq 'Hello, World!! Yes!!'
    end
  end
end
