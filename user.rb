class User < ApplicationRecord
	has_secure_password
	validates :first_name, :last_name, :about, :email, :password_digest, presence: true
	validates :email, uniqueness: true
	validates :password_digest, length: { minimum: 6 }
	has_many :articles
end