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

class Role < ActiveRecord::Base
	enum type_role: [ :admin, :free_user, :paid_user ]
	has_one :user

	validates_presence_of :name, :type_role, :user

end
