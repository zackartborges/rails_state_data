class RemoveCreatedAt < ActiveRecord::Migration[6.1]
  def change
    remove_column :states, :created_at
  end
end
