json.extract! profile, :id, :username, :first_name, :last_name, :created_at, :updated_at
json.url profile_url(profile, format: :json)
