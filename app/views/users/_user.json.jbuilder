json.extract! user, :id, :user_name, :email, :password, :password_confirmation, :city, :state, :phone_no, :created_at, :updated_at
json.url user_url(user, format: :json)
