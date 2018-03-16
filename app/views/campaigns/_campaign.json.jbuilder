json.extract! campaign, :id, :name, :type, :total_in_list, :followed_ups, :call_backs, :user_id, :todo_id, :company_id, :project_id, :assigned_to, :campaignable_id, :campaignable_type, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
