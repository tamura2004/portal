require 'rails_helper'

RSpec.describe "User::Systems", type: :request do
  describe "GET /user_systems" do
    it "works! (now write some real specs)" do
      get user_systems_path
      expect(response).to have_http_status(200)
    end
  end
end
