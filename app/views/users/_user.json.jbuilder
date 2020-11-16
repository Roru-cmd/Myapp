json.extract! user, :id, :name, :active_job, :time, :created_at, :updated_at
json.url user_url(user, format: :json)
