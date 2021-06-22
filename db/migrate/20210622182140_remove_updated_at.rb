class RemoveUpdatedAt < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :updated_at

  end
end
