FactoryBot.define do
  factory :lead do
    first_name "MyString"
    last_name "MyString"
    phone "MyString"
    email "MyString"
    company "MyString"
    location_requirement "MyString"
    space_type "MyString"
    size_requirment "MyString"
    budget_requirment "MyString"
    assigned_to 1
    leadable nil
    user nil
  end
end
