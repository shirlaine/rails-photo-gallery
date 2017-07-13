class PhotosController < ApplicationController
   before_action :set_photo, :only => [:show, :edit, :update, :destroy]

	def index 
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end 

	def create
		@photo = Photo.new(photo_params)
		if @photo.save
		redirect_to photos_url

		else 
			render :new
		end
	end

	def show
		@photo = set_photo
	end	

	def edit
		@photo = set_photo
	end	

	def update
		@photo = set_photo
		
		if @photo.update_attributes(photo_params)

		redirect_to photo_path(@photo)

		else 
			render :edit
		end

		
	end 

	def destroy
		@photo = set_photo
		@photo.destroy 

		redirect_to photos_url
	end


private
	
	def set_photo
		@photo = Photo.find(params[:id])
	end 

	def photo_params
		params.require(:photo).permit(:title, :date, :description, :file_location)
	end

	
end
