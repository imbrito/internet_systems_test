require "rails_helper"

RSpec.describe HomeController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/en/index").to route_to("home#index", :locale => "en")
    end
  end
end