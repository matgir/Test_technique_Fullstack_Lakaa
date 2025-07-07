class CreateFoodCollections < ActiveRecord::Migration[8.0]
  def change
    create_table :food_collections do |t|
      t.date :collect_date
      t.string :association_name

      t.timestamps
    end
  end
end
