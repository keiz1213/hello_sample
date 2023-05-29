class ChangeColumnsAddNotNullOnUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :uid, false
    change_column_null :users, :name, false
    change_column_null :users, :avatar_url, false
  end
end
