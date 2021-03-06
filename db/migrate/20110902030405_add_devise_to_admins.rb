class AddDeviseToAdmins < ActiveRecord::Migration
  def self.up
    create_table(:admins) do |t|
      #t.database_authenticatable :null => false
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      #t.recoverable
      #t.rememberable
      #t.trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      #t.lockable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable
      t.string :username, :unique => true
      t.string :gender

      # Uncomment below if timestamps were not included in your original model.
      t.timestamps
    end

    add_index :admins, :email,                :unique => true
    #add_index :admins, :reset_password_token, :unique => true
    # add_index :admins, :confirmation_token,   :unique => true
    # add_index :admins, :unlock_token,         :unique => true
    # add_index :admins, :authentication_token, :unique => true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    #raise ActiveRecord::IrreversibleMigration
  end
end