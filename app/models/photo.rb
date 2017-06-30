class Photo < ApplicationRecord
	validates :title, presence: true
	validates_presence_of :title, :date, :decscription, :file_location
end
