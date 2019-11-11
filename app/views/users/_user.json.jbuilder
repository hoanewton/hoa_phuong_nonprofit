json.extract! user, :id, :email, :full_name, :phone, :address, :type, :admin_note, :created_at, :updated_at
json.url user_url(user, format: :json)
