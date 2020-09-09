require 'rails_helper'

RSpec.describe PagesController do
  describe 'GET /home' do
    it '200 status code' do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
end
