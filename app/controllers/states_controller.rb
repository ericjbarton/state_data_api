class StatesController < ApplicationController
  def index
    @states = State.all
    render json: @states.all
  end

  def show
    @state_id = params["abbrev"]
    @state = State.find_by(id: @state_id)
    render template: "states/show"
  end
end
