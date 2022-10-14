class AbbreviationsController < ApplicationController
  def show
    state = State.find_by(state: params["state"].capitalize)
    render json: state
  end
end
