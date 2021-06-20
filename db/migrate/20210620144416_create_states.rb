class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :median_household_income
      t.string :share_unemployed_seasonal
      t.string :share_population_in_metro_areas
      t.string :share_population_with_high_school_degree

      t.timestamps
    end
  end
end
