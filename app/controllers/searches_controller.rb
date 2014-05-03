class SearchesController < ApplicationController
  # GET /searches
  # GET /searches.json
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
