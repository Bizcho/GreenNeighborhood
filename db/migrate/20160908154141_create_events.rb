class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :date_start
      t.date :date_end

      t.timestamps null: false
    end
  end
end
