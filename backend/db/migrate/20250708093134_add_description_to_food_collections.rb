class AddDescriptionToFoodCollections < ActiveRecord::Migration[8.0]
  def change
    add_column :food_collections, :description, :text
  end
end
