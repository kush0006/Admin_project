class Setting < ApplicationRecord
	validates :blog_name, :post_per_page, presence: true
	has_many :notifications, as: :notifiable
end
