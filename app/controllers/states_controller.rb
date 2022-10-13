class StatesController < ApplicationController
  def index
    states = State.all
    render json: states.all
  end

  def show
    state_id = params["id"]
    @state = State.find_by(code: params["code"].upcase) || @state = State.find_by(state: params["state"])
    render json: @state.as_json
  end

  # def show_state
  #   @state = State.find_by(state: params[:state])
  #   render json: @state
  # end
end
