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
    title "MyString"
    content "MyText"
    video_url "MyString"
    user_id 1
    category_id 1
    type 1
    code_url "MyString"
  end
end
