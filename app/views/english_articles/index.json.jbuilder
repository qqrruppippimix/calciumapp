json.array!(@english_articles) do |english_article|
  json.extract! english_article, :id, :price, :description
  json.url english_article_url(english_article, format: :json)
end
