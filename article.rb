class Article < ApplicationRecord
  validates :title, :content, presence: true
  belongs_to :user
  has_many :comments
  has_many :article_tags
  has_many :tags, through: :article_tags
end