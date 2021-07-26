class Message < ApplicationRecord
	validates :fullname, :email, :content, presence: true
	has_many :notifications, as: :notifiable
end
