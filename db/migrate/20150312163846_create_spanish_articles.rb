class CreateSpanishArticles < ActiveRecord::Migration
  def change
    create_table :spanish_articles do |t|
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
