class StatesController < ApplicationController
  def index
    @states = State.all
    render json: @states.all
  end

  def show
    @state = State.find_by(id: params[:code])
    render json: @state
  end
end
