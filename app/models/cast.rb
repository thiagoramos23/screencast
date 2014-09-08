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

class Cast < ActiveRecord::Base
	enum type: [ :free, :paid ]

	belongs_to :user
	belongs_to :category

	validates_presence_of :title, :content, :video_url, :user_id, :category_id, :type
end
