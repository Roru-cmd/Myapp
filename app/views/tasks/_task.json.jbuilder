json.extract! task, :id, :t_title, :t_descn, :created_at, :updated_at
json.url task_url(task, format: :json)
