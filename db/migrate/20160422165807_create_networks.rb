class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
