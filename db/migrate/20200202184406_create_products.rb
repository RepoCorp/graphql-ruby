class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :manufacturer, null: false, foreign_key: true
      t.integer :qty
      t.string :photo_url

      t.timestamps
    end
  end
end
