class User < ApplicationRecord
  # Associations
  has_many :tweets, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Validations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :email, :username, :name, :password, presence: true
  validates :email, :username, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :email, format: { with: VALID_EMAIL_REGEX }, allow_blank: true
end
