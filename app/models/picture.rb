class Picture < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image,  presence: true
  validates :content, presence: true, length: { maximum: 50 }
  belongs_to :user, optional:true
end
