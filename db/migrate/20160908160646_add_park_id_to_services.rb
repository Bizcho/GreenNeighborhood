class AddParkIdToServices < ActiveRecord::Migration
  def change
    add_reference :services, :park, index: true, foreign_key: true
  end
end
