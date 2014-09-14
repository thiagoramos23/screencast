# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  type_role  :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :role do
    name "Role Normal"
    type_role 1
  end

  factory :role_admin, class: Role do
  	name "Admin"
  	type_role 0
  end
end
