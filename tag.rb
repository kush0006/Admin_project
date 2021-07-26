class Tag < ApplicationRecord
  validates :name, presence: true
  has_many :article_tags
  has_many :article, through: :article_tags
end