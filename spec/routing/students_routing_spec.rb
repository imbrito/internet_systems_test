require "rails_helper"

RSpec.describe StudentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/en/students").to route_to("students#index", :locale => "en")
    end

    it "routes to #new" do
      expect(:get => "/en/students/new").to route_to("students#new", :locale => "en")
    end

    it "routes to #show" do
      expect(:get => "/en/students/1").to route_to("students#show", :locale => "en", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/en/students/1/edit").to route_to("students#edit", :locale => "en", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/en/students").to route_to("students#create", :locale => "en")
    end

    it "routes to #update via PUT" do
      expect(:put => "/en/students/1").to route_to("students#update", :locale => "en", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/en/students/1").to route_to("students#update", :locale => "en", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/en/students/1").to route_to("students#destroy", :locale => "en", :id => "1")
    end

  end
end
