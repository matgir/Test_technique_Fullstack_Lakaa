class CreateIndicatorValues < ActiveRecord::Migration[8.0]
  def change
    create_table :indicator_values do |t|
      t.string :value
      t.references :indicator_name, null: false, foreign_key: true
      t.references :food_collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
