json.extract! address, :id, :street1, :street2, :city, :state, :zipcode, :country, :full_address, :address_type, :addressable_id, :addressable_type, :created_at, :updated_at
json.url address_url(address, format: :json)
