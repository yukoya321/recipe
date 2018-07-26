require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  describe "get #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
