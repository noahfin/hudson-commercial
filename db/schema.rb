# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180316011710) do

  create_table "addresses", force: :cascade do |t|
    t.string "street1"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "country"
    t.string "full_address"
    t.string "address_type"
    t.string "addressable_type"
    t.integer "addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "total_in_list"
    t.integer "followed_ups"
    t.integer "call_backs"
    t.integer "user_id"
    t.integer "todo_id"
    t.integer "company_id"
    t.integer "project_id"
    t.integer "assigned_to"
    t.string "campaignable_type"
    t.integer "campaignable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campaignable_type", "campaignable_id"], name: "index_campaigns_on_campaignable_type_and_campaignable_id"
    t.index ["company_id"], name: "index_campaigns_on_company_id"
    t.index ["project_id"], name: "index_campaigns_on_project_id"
    t.index ["todo_id"], name: "index_campaigns_on_todo_id"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.string "commentable_type"
    t.integer "commentable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "fax"
    t.string "website"
    t.boolean "owns"
    t.boolean "rents"
    t.string "industry"
    t.string "SF_using"
    t.string "sic_code"
    t.string "source_of_name"
    t.string "suite"
    t.integer "total_employees"
    t.string "location_requirements"
    t.string "year_founded"
    t.boolean "data_checked"
    t.boolean "exclussive"
    t.boolean "active"
    t.string "company_type"
    t.string "companyable_type"
    t.integer "companyable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["companyable_type", "companyable_id"], name: "index_companies_on_companyable_type_and_companyable_id"
  end

  create_table "companies_contacts", id: false, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "contact_id", null: false
    t.index ["company_id", "contact_id"], name: "index_companies_contacts_on_company_id_and_contact_id"
    t.index ["contact_id", "company_id"], name: "index_companies_contacts_on_contact_id_and_company_id"
  end

  create_table "companies_projects", id: false, force: :cascade do |t|
    t.integer "company_id", null: false
    t.integer "project_id", null: false
    t.index ["company_id", "project_id"], name: "index_companies_projects_on_company_id_and_project_id"
    t.index ["project_id", "company_id"], name: "index_companies_projects_on_project_id_and_company_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "prefix"
    t.string "first_name"
    t.string "middle_intial"
    t.string "last_name"
    t.string "title"
    t.string "cell"
    t.string "phone"
    t.string "fax"
    t.string "bussiness_email"
    t.string "personal_email"
    t.string "extra_email"
    t.string "address"
    t.integer "user_id"
    t.integer "category_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts_projects", id: false, force: :cascade do |t|
    t.integer "contact_id", null: false
    t.integer "project_id", null: false
    t.index ["contact_id", "project_id"], name: "index_contacts_projects_on_contact_id_and_project_id"
    t.index ["project_id", "contact_id"], name: "index_contacts_projects_on_project_id_and_contact_id"
  end

  create_table "deals", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.decimal "commission"
    t.date "time_of_close"
    t.integer "user_id"
    t.integer "todo_id"
    t.integer "company_id"
    t.string "dealable_type"
    t.integer "dealable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_deals_on_company_id"
    t.index ["dealable_type", "dealable_id"], name: "index_deals_on_dealable_type_and_dealable_id"
    t.index ["todo_id"], name: "index_deals_on_todo_id"
    t.index ["user_id"], name: "index_deals_on_user_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "company"
    t.string "location_requirement"
    t.string "space_type"
    t.string "size_requirment"
    t.string "budget_requirment"
    t.integer "assigned_to"
    t.string "leadable_type"
    t.integer "leadable_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leadable_type", "leadable_id"], name: "index_leads_on_leadable_type_and_leadable_id"
    t.index ["user_id"], name: "index_leads_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "todo_id"
    t.integer "user_id"
    t.integer "contact_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_projects_on_contact_id"
    t.index ["todo_id"], name: "index_projects_on_todo_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "projects_todos", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "todo_id", null: false
    t.index ["project_id", "todo_id"], name: "index_projects_todos_on_project_id_and_todo_id"
    t.index ["todo_id", "project_id"], name: "index_projects_todos_on_todo_id_and_project_id"
  end

  create_table "todos", force: :cascade do |t|
    t.string "title"
    t.string "created_by"
    t.boolean "finshed"
    t.integer "user_id"
    t.string "todo_type"
    t.string "todoable_type"
    t.integer "todoable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["todoable_type", "todoable_id"], name: "index_todos_on_todoable_type_and_todoable_id"
  end

  create_table "todos_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "todo_id", null: false
    t.index ["todo_id", "user_id"], name: "index_todos_users_on_todo_id_and_user_id"
    t.index ["user_id", "todo_id"], name: "index_todos_users_on_user_id_and_todo_id"
  end

  create_table "touches", force: :cascade do |t|
    t.string "name"
    t.string "way_of_contact"
    t.boolean "success"
    t.date "date_touched"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true
    t.index ["invitations_count"], name: "index_users_on_invitations_count"
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_users_on_invited_by_type_and_invited_by_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

end
