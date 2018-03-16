json.extract! todo, :id, :title, :created_by, :finshed, :user_id, :todo_type, :todoable_id, :todoable_type, :created_at, :updated_at
json.url todo_url(todo, format: :json)
