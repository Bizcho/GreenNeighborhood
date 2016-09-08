class AddCommunityIdToParks < ActiveRecord::Migration
  def change
    add_reference :parks, :community, index: true, foreign_key: true
  end
end
