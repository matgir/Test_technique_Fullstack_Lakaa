class CreateIndicatorNames < ActiveRecord::Migration[8.0]
  def change
    create_table :indicator_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
