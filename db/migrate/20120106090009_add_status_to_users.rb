class AddStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status, :string, :default => "idle"
  end
end
