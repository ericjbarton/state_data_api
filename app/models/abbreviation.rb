class Abbreviation < ApplicationRecord
  has_many :states, :through => :datum
end
