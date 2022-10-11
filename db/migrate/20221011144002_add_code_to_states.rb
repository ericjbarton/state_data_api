class AddCodeToStates < ActiveRecord::Migration[7.0]
  def change
    add_column :states, :code, :string
  end
end
