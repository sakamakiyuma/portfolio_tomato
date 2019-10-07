class WorksController < ApplicationController
  before_action :authenticate_user,{only:[:new,:create,:edit,:update,:destroy]}

  def index
    @works = Work.all.order(created_at: :desc).page(params[:page]).per(20)
  end

  def new
  end

  def create
    @works = Work.new(permit_params)
    @works.save!
  end
  
  def show
    @work = Work.find_by(id:params[:id])
  end

  def edit
    @work = Work.find_by(id:params[:id])
  end

  def update
    @work = Work.find_by(id:params[:id])
    @work.work_title = params[:work_title]
    @work.image = params[:image]
    @work.save!
    redirect_to("/")
  end

  def destroy
    @work = Work.find_by(id: params[:id])
    @work.destroy
    redirect_to("/")
  end

private
  def permit_params
    params.require(:work).permit(:image)
  end
end
