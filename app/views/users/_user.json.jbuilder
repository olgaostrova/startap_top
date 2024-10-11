json.extract! user, :id, :name, :surname, :login, :password, :email, :occupation, :tags, :created_at, :updated_at
json.url user_url(user, format: :json)
