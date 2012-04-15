class AddUserToProjects < ActiveRecord::Migration
  def up
    add_column(:projects, :user_id, :integer)
  end

  def down
    remove_column(:project, :user_id)
  end
end
