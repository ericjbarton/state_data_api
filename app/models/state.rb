class State < ApplicationRecord
has_many :abbreviations, :through => :datum
  # def all_states
  #   puts State.all
  # end

  # def show
  #   state = State.find_by(id: params[:id])
  #   render json: state
  # end
end
