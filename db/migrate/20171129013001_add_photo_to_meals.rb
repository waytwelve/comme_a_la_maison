class AddPhotoToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :photo, :string
  end
end
