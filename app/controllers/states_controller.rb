class StatesController < ApplicationController
  def index
    states = State.all
    render json: states.all
  end

  def show_state
    @state = State.find_by(state: params["state"].capitalize)
    render json: @state
  end

  def index_codes
    codes = Code.all
    render json: codes.all
  end

  def show
    @state = State.find_by(code: params["code"].upcase)
    render json: @state
  end
end
