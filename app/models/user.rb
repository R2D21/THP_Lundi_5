class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true, length: {in: 3..10}
  validates :bio, presence: true, length: {maximum: 500}
end
