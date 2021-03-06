class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true, length: {maximum: 30}
  validates :email, presence: true, length: {maximum: 255},
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase!}
  has_secure_password
  has_many :favorites, dependent: :destroy
  has_many :favorites_pictures,through: :favorites, source: :picture
end

