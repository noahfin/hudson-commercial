class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :company
      t.string :location_requirement
      t.string :space_type
      t.string :size_requirment
      t.string :budget_requirment
      t.integer :assigned_to
      t.references :leadable, polymorphic: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
