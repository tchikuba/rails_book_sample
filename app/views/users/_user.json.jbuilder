json.extract! user, :id, :sex, :created_at, :updated_at
json.url user_url(user, format: :json)
