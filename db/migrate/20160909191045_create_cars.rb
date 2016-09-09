class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.text :descr
      t.string :small_photo
      t.string :big_photo
      t.integer :price1
      t.integer :price2
      t.integer :price3
      t.text :article

      t.timestamps null: false
    end
  end
end
