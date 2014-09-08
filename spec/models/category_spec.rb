# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Category, :type => :model do
  
  context "presence of" do  	
  	it "validates presence of name" do
  		expect(subject).to validate_presence_of(:name)
  	end
  end

  context "associations" do
  	context "has_many" do
  		it "validates has_many casts" do
  			expect(subject).to have_many(:casts)
  		end
  	end
  end
end
