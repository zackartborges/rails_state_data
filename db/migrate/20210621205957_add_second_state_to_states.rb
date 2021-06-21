class AddSecondStateToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :second_state, :string

  end
end
