class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :user_id
      t.integer :warehouse_id
      t.timestamps
    end
  end
end
