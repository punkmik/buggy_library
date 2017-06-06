json.extract! card, :id, :barcode, :name, :created_at, :updated_at
json.url card_url(card, format: :json)
