class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :created_by
      t.boolean :finshed
      t.integer :user_id
      t.string :todo_type
      t.references :todoable, polymorphic: true

      t.timestamps
    end
  end
end
