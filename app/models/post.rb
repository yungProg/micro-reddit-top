class Post < ApplicationRecord
  validates :title, presence: true
  validates :user_id, presence: true

  has_many :comments
  belongs_to :user
end
