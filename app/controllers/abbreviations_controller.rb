class AbbreviationsController < ApplicationController
  def index
    @abbreviations = Abbreviation.all
    render json: @abbreviations.all
  end
  def show
    @abbreviation = Abbreviation.find_by(:id params[:code])
    render json: @abbreviation
  end
end
