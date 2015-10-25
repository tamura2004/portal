require "rails_helper"

RSpec.describe JavasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/javas").to route_to("javas#index")
    end

    it "routes to #new" do
      expect(:get => "/javas/new").to route_to("javas#new")
    end

    it "routes to #show" do
      expect(:get => "/javas/1").to route_to("javas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/javas/1/edit").to route_to("javas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/javas").to route_to("javas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/javas/1").to route_to("javas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/javas/1").to route_to("javas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/javas/1").to route_to("javas#destroy", :id => "1")
    end

  end
end
