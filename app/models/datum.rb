class Datum < ApplicationRecord
  belongs_to :state
  belongs_to :abbreviation
end
