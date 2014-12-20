require "spec_helper"

describe "Root Path" do
  it "routes to about#index" do
    get("/").should route_to("about#index")
  end
end

describe AboutController do
  describe "routing" do
    it "routes to #index" do
      get("/about").should route_to("about#index")
    end
  end
end
