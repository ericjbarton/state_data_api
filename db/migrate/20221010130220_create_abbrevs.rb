class CreateAbbrevs < ActiveRecord::Migration[7.0]
  def change
    create_table :abbrevs do |t|
      t.string "state"
      t.string "abbrev"
      t.string "code"
      t.timestamps
    end
  end
end
