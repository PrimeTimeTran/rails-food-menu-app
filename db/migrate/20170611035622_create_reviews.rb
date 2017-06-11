class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :review
      t.integer :stars  
      t.references :food_item, foreign_key: true

      t.timestamps
    end
  end
end
