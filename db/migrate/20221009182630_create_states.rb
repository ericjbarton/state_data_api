class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :state
      t.integer :median_household_income
      t.integer :share_unemployed_seasonal
      t.integer :share_population_in_metro_areas
      t.integer :share_population_with_high_school_degree
      t.timestamps
    end
  end
end
