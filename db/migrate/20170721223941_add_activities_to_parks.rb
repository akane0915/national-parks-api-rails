class AddActivitiesToParks < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.integer :park_id

      t.timestamps
    end
  end
end
