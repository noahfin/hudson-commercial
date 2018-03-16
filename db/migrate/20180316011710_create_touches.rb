class CreateTouches < ActiveRecord::Migration[5.1]
  def change
    create_table :touches do |t|
      t.string :name
      t.string :way_of_contact
      t.boolean :success
      t.date :date_touched

      t.timestamps
    end
  end
end
