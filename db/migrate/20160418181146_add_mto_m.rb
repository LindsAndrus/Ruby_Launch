class AddMtoM < ActiveRecord::Migration
  def change
    add_column :likes, :user_id, :integer
    add_column :likes, :secret_id, :integer
  end
end
