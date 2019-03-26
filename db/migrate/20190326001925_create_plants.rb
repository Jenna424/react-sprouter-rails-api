class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :family
      t.integer :max_quantity
      t.string :soil_specifications
      t.string :sow_season
      t.string :harvest_season

      t.timestamps
    end
  end
end
