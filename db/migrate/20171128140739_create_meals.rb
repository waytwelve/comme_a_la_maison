class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :category
      t.string :country
      t.integer :quantity
      t.boolean :is_delivery
      t.datetime :cooked_at
      t.integer :stars
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
