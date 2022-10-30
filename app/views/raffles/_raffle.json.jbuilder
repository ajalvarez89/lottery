json.extract! raffle, :id, :number, :name, :status, :created_at, :updated_at
json.url raffle_url(raffle, format: :json)
