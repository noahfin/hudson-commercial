json.extract! contact, :id, :prefix, :first_name, :middle_intial, :last_name, :title, :cell, :phone, :fax, :bussiness_email, :personal_email, :extra_email, :user_id, :category_id, :company_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
