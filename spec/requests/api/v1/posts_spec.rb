require 'rails_helper'

RSpec.describe 'api/v1/post', type: :request do
  describe 'GET /api/v1/posts' do
    it 'Get Posts' do
      get '/api/v1/posts'
      expect(response.status).to eq(200)
    end
  end
end
 