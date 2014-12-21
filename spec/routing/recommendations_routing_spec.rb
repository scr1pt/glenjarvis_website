require "spec_helper"

describe RecommendationsController do
  describe "routing" do
    it "routes to #index" do
      get("/recommendations").should route_to("recommendations#index")
    end
  end
end
