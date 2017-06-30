class Photo < ApplicationRecord
	validates :title, presence: true
	validates_presence_of :title, :date, :description, :file_location
end
