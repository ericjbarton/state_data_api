class CodesController < ApplicationController
  def index
    codes = Code.all
    render json: codes.all
  end

  def show
    @state = State.find_by(code: params["code"].upcase)
    render json: @state
  end
end
