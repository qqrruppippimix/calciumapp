json.array!(@english_books) do |english_book|
  json.extract! english_book, :id, :price, :description
  json.url english_book_url(english_book, format: :json)
end
