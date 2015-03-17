json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :last_name, :contact_phone, :country, :addres, :city, :province, :postal_code
  json.url user_url(user, format: :json)
end
