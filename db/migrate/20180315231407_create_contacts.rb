class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :prefix
      t.string :first_name
      t.string :middle_intial
      t.string :last_name
      t.string :title
      t.string :cell
      t.string :phone
      t.string :fax
      t.string :bussiness_email
      t.string :personal_email
      t.string :extra_email
      t.string :address
      t.integer :user_id
      t.integer :category_id
      t.integer :company_id

      t.timestamps
    end
  end
end
