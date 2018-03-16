class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :type
      t.integer :total_in_list
      t.integer :followed_ups
      t.integer :call_backs
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true
      t.references :company, foreign_key: true
      t.references :project, foreign_key: true
      t.integer :assigned_to
      t.references :campaignable, polymorphic: true

      t.timestamps
    end
  end
end
