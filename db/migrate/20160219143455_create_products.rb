class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :barcode
      t.integer :location

      t.timestamps
    end
  end
end
