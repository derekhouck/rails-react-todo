require "rails_helper"

RSpec.describe TodoitemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/todoitems").to route_to("todoitems#index")
    end

    it "routes to #show" do
      expect(get: "/todoitems/1").to route_to("todoitems#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/todoitems").to route_to("todoitems#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/todoitems/1").to route_to("todoitems#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/todoitems/1").to route_to("todoitems#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/todoitems/1").to route_to("todoitems#destroy", id: "1")
    end
  end
end
