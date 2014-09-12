require 'rails_helper'

RSpec.describe CastsController do
	let(:admin) { FactoryGirl.create(:admin) }
	let(:cast) { FactoryGirl.build_stubed(:cast) }


	describe "As admin" do
		before :each do
			sign_in admin
		end

		context "Creating casts" do
			before :each do
				allow(Cast).to receive(:create) { cast }
				post :create
			end

			context	"Valid cast" do
				it "assigns new cast" do
					expect(assings(:cast)).to be_persisted
				end
			end
		end
	end
end