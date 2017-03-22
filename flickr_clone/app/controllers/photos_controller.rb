class PhotosController < ApplicationController
  def show
    @photo = Photo.all
  end

  def new
    @photo = Photo.new

  end

  def create
    @photo = Photo.new(list_params)
    if @photo.save
      redirect_to photos_path
    else
      render:new

    end
  end

  def index
    @photos = Photo.all
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(list_params)
      redirect_to photos_path
    else
      render :edit

    end
  end
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end
  private
  def list_params
    params.require(:photo).permit(:photo, :tag)
  end
end
