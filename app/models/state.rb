class State < ApplicationRecord
  has_many :abbrevs

  def all_states
    puts State.all
  end

  def show
    state = State.find_by(id: params[:abbrev])
    render json: state
  end
end
