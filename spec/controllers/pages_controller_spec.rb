require 'rails_helper'

RSpec.describe PagesController do
  describe 'GET /index' do
    it '200 status code' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
