class Meal < ApplicationRecord
  belongs_to :user
  has_many :photos
  validates :name, presence: true
  mount_uploader :photo, PhotoUploader

end
