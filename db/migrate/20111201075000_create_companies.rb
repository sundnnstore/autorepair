class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string  :state
      t.string  :address
      t.string  :phone

      t.timestamps
    end
  end
end