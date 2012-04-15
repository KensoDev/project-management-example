class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :project_id
      t.boolean :complete

      t.timestamps
    end
  end
end
