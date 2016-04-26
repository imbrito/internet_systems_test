require "rails_helper"

RSpec.describe ClassroomsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/en/classrooms").to route_to("classrooms#index", :locale => "en")
    end

    it "routes to #new" do
      expect(:get => "/en/classrooms/new").to route_to("classrooms#new", :locale => "en")
    end

    it "routes to #show" do
      expect(:get => "/en/classrooms/1").to route_to("classrooms#show", :locale => "en", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/en/classrooms/1/edit").to route_to("classrooms#edit", :locale => "en", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/en/classrooms").to route_to("classrooms#create", :locale => "en")
    end

    it "routes to #update via PUT" do
      expect(:put => "/en/classrooms/1").to route_to("classrooms#update", :locale => "en", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/en/classrooms/1").to route_to("classrooms#update", :locale => "en", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/en/classrooms/1").to route_to("classrooms#destroy", :locale => "en", :id => "1")
    end

  end
end
