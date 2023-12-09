class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  validates :username, presence: true, unique: true
  validates :email, presence: true, unique: true
  validates :password, presence: true, length: { minimum: 2, maximum: 18 }
end
