require 'rails_helper'

RSpec.describe CastsController do
	let(:admin) { FactoryGirl.create(:admin) }
	let(:cast) { FactoryGirl.build_stubbed(:cast) }
	let(:invalid_cast) { FactoryGirl.build_stubbed(:invalid_cast) }

	describe "As admin" do
		before :each do
			sign_in admin
		end

		context "Creating casts" do

			context	"Valid cast" do
				before :each do
					allow(Cast).to receive(:create) { cast }
				end

				it "assigns new cast" do
					post :create
					expect(assigns(:cast)).to be_persisted
				end
			end

			context "Invalid Cast" do
				before :each do
					allow(Cast).to receive(:create) { invalid_cast }
				end

				it "not creates the cast" do
					post :create
					expect(assigns(:cast)).to_not be_persisted
				end
			end
		end
	end
end