class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.string :name
      t.string :company
      t.decimal :commission
      t.date :time_of_close
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true
      t.references :company, foreign_key: true
      t.references :dealable, polymorphic: true

      t.timestamps
    end
  end
end
