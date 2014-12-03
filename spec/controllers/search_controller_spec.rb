require 'spec_helper'

describe SearchController do

  describe "GET 'results'" do
    it "returns http success" do
      get 'results'
      expect(response).to be_success
    end
  end

end
