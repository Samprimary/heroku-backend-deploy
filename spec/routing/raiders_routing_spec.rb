require "rails_helper"

RSpec.describe RaidersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/raiders").to route_to("raiders#index")
    end


    it "routes to #show" do
      expect(:get => "/raiders/1").to route_to("raiders#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/raiders").to route_to("raiders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/raiders/1").to route_to("raiders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/raiders/1").to route_to("raiders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/raiders/1").to route_to("raiders#destroy", :id => "1")
    end

  end
end
