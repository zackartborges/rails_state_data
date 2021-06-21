class RemoveeAbbrevFromStates < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :abbrev
  end
end
