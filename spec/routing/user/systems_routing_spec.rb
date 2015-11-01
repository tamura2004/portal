require "rails_helper"

RSpec.describe User::SystemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user/systems").to route_to("user/systems#index")
    end

    it "routes to #new" do
      expect(:get => "/user/systems/new").to route_to("user/systems#new")
    end

    it "routes to #show" do
      expect(:get => "/user/systems/1").to route_to("user/systems#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user/systems/1/edit").to route_to("user/systems#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user/systems").to route_to("user/systems#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user/systems/1").to route_to("user/systems#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user/systems/1").to route_to("user/systems#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user/systems/1").to route_to("user/systems#destroy", :id => "1")
    end

  end
end
