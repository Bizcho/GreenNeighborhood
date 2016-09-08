class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :ubication

      t.timestamps null: false
    end
  end
end
