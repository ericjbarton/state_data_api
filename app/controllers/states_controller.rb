class StatesController < ApplicationController
  def index
    @states = State.all
    render json: @states.all
  end

  def show
    @state = State.find_by(code: params[:code].upcase)
    render json: @state
  end

  # def show
  #   @state = State.find_by(state: params[:state])
  #   render json: @state

end
