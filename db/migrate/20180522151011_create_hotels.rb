class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.integer :city_id
      t.string :name
      t.text :formatted_address
      t.float :latitude
      t.float :longitude
      t.float :rating
      t.text :photo_reference
      t.string :place_id

      t.timestamps
    end
  end
end
