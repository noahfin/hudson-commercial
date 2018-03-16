class CreateJoinTableProjectsTodos < ActiveRecord::Migration[5.1]
  def change
    create_join_table :projects, :todos do |t|
      t.index [:project_id, :todo_id]
      t.index [:todo_id, :project_id]
    end
  end
end
