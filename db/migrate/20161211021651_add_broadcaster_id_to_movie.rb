class AddBroadcasterIdToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :broadcaster_id, :string
  end
end
