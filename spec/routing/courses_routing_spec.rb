require "rails_helper"

RSpec.describe CoursesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/en/courses").to route_to("courses#index", :locale => "en")
    end

    it "routes to #new" do
      expect(:get => "/en/courses/new").to route_to("courses#new", :locale => "en")
    end

    it "routes to #show" do
      expect(:get => "/en/courses/1").to route_to("courses#show", :locale => "en", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/en/courses/1/edit").to route_to("courses#edit", :locale => "en", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/en/courses").to route_to("courses#create", :locale => "en")
    end

    it "routes to #update via PUT" do
      expect(:put => "/en/courses/1").to route_to("courses#update", :locale => "en", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/en/courses/1").to route_to("courses#update", :locale => "en", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/en/courses/1").to route_to("courses#destroy", :locale => "en", :id => "1")
    end

  end
end
