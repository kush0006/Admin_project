class Comment < ApplicationRecord
	validates :fullname, :email, :message, presence: true
	has_many :notifications, as: :notifiable
	belongs_to :article
end
