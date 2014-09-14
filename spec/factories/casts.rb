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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cast do
    title "Initiating with Table View"
    content "It's very easy to start developing with table views"
    video_url "http://video.com/url_do_video"
    user { FactoryGirl.build(:admin) }
    category { FactoryGirl.create(:beginner) }
    type 1
    code_url "http://github.com/thiagoramos23/code_url"
  end

  factory :invalid_cast, class: Cast do
  	title ""
  	content ""
  	video_url ""
    user { FactoryGirl.build(:admin) }
    category { FactoryGirl.create(:beginner) }
    type 1
    code_url ""
  end
end
