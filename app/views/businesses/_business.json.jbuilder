json.extract! business, :id, :name, :description, :email, :phone, :address, :location, :user_id, :latitude, :longitude, :created_at, :updated_at
json.url business_url(business, format: :json)
