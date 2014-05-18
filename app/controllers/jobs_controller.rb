class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! ,except: [:show,:index ]
  responders :flash
  def index
    @page_title = "iOS 職缺"
    if params[:search]
      @jobs = Job.search(params[:search]).page params[:page]
    else
      @jobs = Job.page params[:page]
    end
  end
  def show
  end
  def new
    @job = Job.new(:deadline => DateTime.now + 14 )
  end
  def edit
  end
  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    @job.save
    respond_with(@job)
  end
  def update
    @job.update(job_params)
    respond_with(@job)
  end
  def destroy
    @job.destroy
    respond_with(@job)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = current_user.jobs.find(params[:id]) if current_user
    @job = Job.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def job_params
    params.require(:job).permit(:job_title, :company_name, :url, :job_type, :location, :description, :deadline,:apply,:logo)
  end
end
