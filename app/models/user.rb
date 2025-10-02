class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :display_name, presence: true
  validates :password, presence: true, length: { minimum: 6 }, format: { with: /\w/, message: "only allows letters" }

  has_many :posts
  has_many :comments
end
