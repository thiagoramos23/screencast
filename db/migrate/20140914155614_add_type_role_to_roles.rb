class AddTypeRoleToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :type_role, :integer
  end
end
