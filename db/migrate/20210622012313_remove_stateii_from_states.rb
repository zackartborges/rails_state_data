class RemoveStateiiFromStates < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :stateii
  end
end
