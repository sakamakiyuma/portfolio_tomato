class GalleryController < ApplicationController

  before_action :authenticate_user,{only:[:new,:create,:edit,:update,:destroy]}
  # def index
  #   @galleries = Gallery.all.order(created_at: :desc)
  # end

  # def show
  #   @gallery= Gallery.find_by(id: params[:id])
  # end

  # def new
  # end

  # def create
  #   Gallery.create(gallery_params)
  # end
  
  # private
  # def gallery_params
  #   params.permit(:image)
  # end

  def index
    @galleries = Gallery.all.order(created_at: :desc).page(params[:page]).per(20)
    render layout: false
  end

  def new
  end

  def create
    @gallery = Gallery.new(permit_params)
    @gallery.save!
  end
  
  def show
    @gallery = Gallery.find_by(id: params[:id])
  end

  def edit
    @gallery = Gallery.find_by(id: params[:id])
  end

  def update
    @gallery = Gallery.find_by(id: params[:id])
    @gallery.image = params[:image]
    @gallery.gallery_title = params[:gallery_title]
    @gallery.save!
    redirect_to("/")
  end
  
  def destroy
    @gallery = Gallery.find_by(id: params[:id])
    @gallery.destroy
    redirect_to("/")
  end

  private
    def permit_params
      params.require(:gallery).permit(:image,:gallery_title)
    end
end
