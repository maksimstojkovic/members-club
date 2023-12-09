class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, unique: true
  validates :email, presence: true, unique: true
  validates :password, presence: true, length: { minimum: 2, maximum: 18 }
end
