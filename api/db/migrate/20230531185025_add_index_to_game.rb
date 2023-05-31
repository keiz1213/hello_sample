class AddIndexToGame < ActiveRecord::Migration[7.0]
  def change
    add_index :games, :user_id, unique: true
  end
end
