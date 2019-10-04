class WorksController < ApplicationController
  before_action :authenticate_user,{only:[:new,:create]}

  def index
    @works = Work.all.order(created_at: :desc).page(params[:page]).per(1)
  end

  def new
  end

  def create
    @works = Work.new(permit_params)
    @works.save!
  end
  
  def edit
  end

private
  def permit_params
    params.require(:work).permit(:image)
  end
end
