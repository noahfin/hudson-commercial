json.extract! lead, :id, :first_name, :last_name, :phone, :email, :company, :location_requirement, :space_type, :size_requirment, :budget_requirment, :assigned_to, :leadable_id, :leadable_type, :user_id, :created_at, :updated_at
json.url lead_url(lead, format: :json)
