json.extract! book, :id, :barcode, :title, :description, :author_id, :genre_id, :height, :created_at, :updated_at
json.url book_url(book, format: :json)
