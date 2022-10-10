class AbbreviationsController < ApplicationController
  def index
    @abbreviations = Abbreviation.all
    render json: @abbreviations.all
  end
end
