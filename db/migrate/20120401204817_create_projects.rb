class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :name
      t.integer :status

      t.timestamps
    end
  end
end