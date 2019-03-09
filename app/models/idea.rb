class Idea < ApplicationRecord
	mount_uploader :picture, PictureUploader
	has_many :comments
	belongs_to :user, optional: true
  acts_as_votable
end
