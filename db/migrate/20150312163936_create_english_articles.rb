class CreateEnglishArticles < ActiveRecord::Migration
  def change
    create_table :english_articles do |t|
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
