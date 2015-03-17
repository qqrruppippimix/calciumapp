class CreateSpanishBooks < ActiveRecord::Migration
  def change
    create_table :spanish_books do |t|
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
