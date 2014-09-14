class RemoveTypeFromRoles < ActiveRecord::Migration
  def change
    remove_column :roles, :type, :integer
  end
end
