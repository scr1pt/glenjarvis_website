class RecommendationsController < ApplicationController
  # GET /recommendations
  # GET /recommendations.json
  def index
    @recommendations = Recommendation.all

    respond_to do |format|
      format.html # index.html.erb 
      format.json { render json: @recommendations }
    end
  end

  # GET /recommendations/1
  # GET /recommendations/1.json
  def show
    @recommendation = Recommendation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recommendation }
    end
  end
end
