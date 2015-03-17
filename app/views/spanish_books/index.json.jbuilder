json.array!(@spanish_books) do |spanish_book|
  json.extract! spanish_book, :id, :price, :description
  json.url spanish_book_url(spanish_book, format: :json)
end
