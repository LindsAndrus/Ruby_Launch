class AddConnection < ActiveRecord::Migration
  def change
    add_column :secrets, :user_id, :integer
    remove_column :users, :secret_id
  end
end
