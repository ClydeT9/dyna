class PhotosController < ApplicationController

    def new
        @photo = Photo.new
    end
  
    def destroy
        @photo = Photo.find(params[:id])
        projet = @photo.projet
        
        @photo.destroy
        @photos = Photo.where(projet_id: projet.id)
        
        respond_to :js
    end
    
  end