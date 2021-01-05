class User < ApplicationRecord
  has_secure_password
  has_many :blogs
  has_many :favorites
  has_many :favorite_blog, through: :favorites, source: :blog
end
