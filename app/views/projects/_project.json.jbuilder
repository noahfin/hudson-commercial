json.extract! project, :id, :name, :todo_id, :user_id, :contact_id, :created_at, :updated_at
json.url project_url(project, format: :json)
