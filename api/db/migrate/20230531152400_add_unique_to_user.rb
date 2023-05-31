class AddUniqueToUser < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :uid
  end
end
