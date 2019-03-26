class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :layout, default: "Square Foot Garden with Raised Beds"
      t.string :gardenType

      t.timestamps
    end
  end
end
