require 'spec_helper'

describe "About Page" do
  describe "GET /about" do
    it "works!" do
      get "/about"
      response.status.should be(200)
    end
  end
end
