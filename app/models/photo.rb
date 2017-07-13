class Photo < ApplicationRecord

	mount_uploader :file_location, PhotoImageUploader
	
	validates :title, presence: true, length: {minimum: 5, maximum: 100}
	validates :date, presence: true
	validates :description, presence: true, length: {minimum: 10, maximum: 500}
	validates :file_location, presence: true
end
