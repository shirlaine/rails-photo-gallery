require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  
	def setup 
		@photo = Photo.new(title: "darjeeling", date: 17/06/17, description: "this is darjeelings photo", file_location:"darjee1.jpg")
	end

test "photo should be valid" do 
	assert @photo.valid?
end

test "title should be present" do
	@photo.title= ""
	assert_not @photo.valid?
end

test "title length should not be too long" do
	@photo.title= "a" * 101 #should fail and so if assert_not == false ==pass
	assert_not @photo.valid?

end

test "date must be present" do
	@photo.date=""
	assert_not @photo.valid?

end

test "description must be present" do
	@photo.description=""
	assert_not @photo.valid?
end

test "description must not be too short" do
	@photo.description= "aa"
	assert_not @photo.valid?
end

test "description should not be too long" do

	@photo.description= "a" * 501
	assert_not @photo.valid? 

	end

test "file_location must be present" do
	@photo.file_location=""
	assert_not @photo.valid?
end
 

end
