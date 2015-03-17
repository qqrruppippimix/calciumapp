json.array!(@spanish_articles) do |spanish_article|
  json.extract! spanish_article, :id, :price, :description
  json.url spanish_article_url(spanish_article, format: :json)
end
