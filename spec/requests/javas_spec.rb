require 'rails_helper'

RSpec.describe "Javas", type: :request do
  describe "GET /javas" do
    it "works! (now write some real specs)" do
      get javas_path
      expect(response).to have_http_status(200)
    end
  end
end
