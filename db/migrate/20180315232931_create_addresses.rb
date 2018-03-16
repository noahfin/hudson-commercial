class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :full_address
      t.string :address_type
      t.references :addressable, polymorphic: true

      t.timestamps
    end
  end
end
