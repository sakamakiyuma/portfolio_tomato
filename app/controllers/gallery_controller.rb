class GalleryController < ApplicationController

  before_action :authenticate_user,{only:[:new,:create]}
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
    @galleries = Gallery.all.order(created_at: :desc)
  end

  def create
    @gallery = Gallery.new(permit_params)
    @gallery.save!
  end
  
  def new
  end

  private
    def permit_params
      params.require(:gallery).permit(:image)
    end
end
