class AddDescriptionToMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :description, :text
  end
end
