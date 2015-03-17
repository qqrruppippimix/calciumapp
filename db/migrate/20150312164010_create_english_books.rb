class CreateEnglishBooks < ActiveRecord::Migration
  def change
    create_table :english_books do |t|
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
