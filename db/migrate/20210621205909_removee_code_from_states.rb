class RemoveeCodeFromStates < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :code
  end
end
