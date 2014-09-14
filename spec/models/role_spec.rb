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

require 'rails_helper'

RSpec.describe Role, :type => :model do

	context "Responds to" do
		it { expect(subject).to respond_to(:name) }
		it { expect(subject).to respond_to(:type_role) }
		it { expect(subject).to respond_to(:user) }
	end

	context "validate presence of" do
		it { expect(subject).to validate_presence_of(:name) }
		it { expect(subject).to validate_presence_of(:type_role) }
		it { expect(subject).to validate_presence_of(:user) }
	end

	context "enum" do
		it { expect(subject).to define_enum_for(:type_role) }
	end

end
