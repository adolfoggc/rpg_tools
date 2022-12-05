require "rails_helper"

RSpec.describe TownDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/town_details").to route_to("town_details#index")
    end

    it "routes to #new" do
      expect(get: "/town_details/new").to route_to("town_details#new")
    end

    it "routes to #show" do
      expect(get: "/town_details/1").to route_to("town_details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/town_details/1/edit").to route_to("town_details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/town_details").to route_to("town_details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/town_details/1").to route_to("town_details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/town_details/1").to route_to("town_details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/town_details/1").to route_to("town_details#destroy", id: "1")
    end
  end
end
