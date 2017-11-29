class AddOtherFieldsToMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :price, :integer
    add_column :meals, :is_active, :boolean
  end
end
