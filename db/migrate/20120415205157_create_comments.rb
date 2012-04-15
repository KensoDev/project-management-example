class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :item_id
      t.string :item_type
      
      t.timestamps
    end
  end
end
