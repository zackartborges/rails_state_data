class RemoveCreatedAtAndUpdatedAt < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :created_at
    remove_column :states, :updated_at
  end
end
