class AddIdToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :user_id, :int
  end
end
