class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :profile

      t.timestamps null: false
    end
  end
end
