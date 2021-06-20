class AddAbbrevToState < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :abbrev, :string
  end
end
