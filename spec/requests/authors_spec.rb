require 'rails_helper'
require 'csv'

RSpec.describe AuthorsController, type: :controller do
  describe "GET /index" do
    before do
      author = create(:author)
    end
    it "checks for response" do
      get :index
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).count).to eq 1
    end
  end
end
