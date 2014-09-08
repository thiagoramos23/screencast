# == Schema Information
#
# Table name: casts
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  video_url   :string(255)
#  user_id     :integer
#  category_id :integer
#  type        :integer
#  code_url    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Cast, :type => :model do

	context "validate associations" do
		context "belongs to" do
			it "validates belongs to user" do
				expect(subject).to belong_to(:user)
			end

			it "validates belongs to category" do
				expect(subject).to belong_to(:category)
			end
		end
	end

	context "validate presence of" do
		it { expect(subject).to validate_presence_of(:title) }
		it { expect(subject).to validate_presence_of(:content) }
		it { expect(subject).to validate_presence_of(:video_url) }
		it { expect(subject).to validate_presence_of(:user_id) }
		it { expect(subject).to validate_presence_of(:category_id) }
		it { expect(subject).to validate_presence_of(:type) }
	end

	context "enum" do
		it { expect(subject).to define_enum_for(:type) }
	end
end
