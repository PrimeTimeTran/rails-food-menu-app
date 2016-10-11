class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
