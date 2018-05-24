class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.integer :hotel_id
      t.integer :user_id

      t.timestamps
    end
  end
end
