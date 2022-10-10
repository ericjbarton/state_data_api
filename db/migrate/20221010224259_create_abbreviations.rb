class CreateAbbreviations < ActiveRecord::Migration[7.0]
  def change
    create_table :abbreviations do |t|
      t.string :state
      t.string :abbrev
      t.string :code

      t.timestamps
    end
  end
end
