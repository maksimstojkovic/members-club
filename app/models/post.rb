class Post < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :body, presence: true, length: { minimum: 1, maximum: 2000 }
end
