require 'rails_helper'

RSpec.describe CastsController do
	let(:admin) { FactoryGirl.create(:admin) }
	let(:user) { FactoryGirl.create(:user) }
	let(:cast) { FactoryGirl.build_stubbed(:cast) }
	let(:invalid_cast) { FactoryGirl.build(:invalid_cast) }

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
				it "not creates the cast" do
					expect {
						post :create, cast: invalid_cast
					}.to_not change(Cast, :count)
				end
			end
		end
	end

	describe "As User" do
		before :each do
			sign_in user
		end

		context "Cannot create Casts" do
			it "does not have permission to create casts" do
				post :create
				expect(response).to redirect_to(:root)
			end
		end
	end
end