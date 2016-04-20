class AddConnection < ActiveRecord::Migration
  def change
    add_column :secrets, :user_id, :integer
  end
end
