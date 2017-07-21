class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.integer :sq_miles
      t.string :state
      t.integer :year
      t.string :fauna

      t.timestamps
    end
  end
end
