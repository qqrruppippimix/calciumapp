class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :last_name
      t.string :contact_phone
      t.string :country
      t.string :addres
      t.string :city
      t.string :province
      t.integer :postal_code

      t.timestamps null: false
    end
  end
end
