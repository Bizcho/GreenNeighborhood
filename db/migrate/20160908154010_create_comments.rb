class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :message
      t.string :respond

      t.timestamps null: false
    end
  end
end
