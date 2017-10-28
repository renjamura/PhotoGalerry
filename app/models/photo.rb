class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments, ,:dependent => :destroy

  mount_uploader :image, ImageUploader
end
