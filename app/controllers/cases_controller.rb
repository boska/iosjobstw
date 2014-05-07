class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! ,except: [:show,:index ]
  responders :flash
  def index
    @page_title = "專案外包"
    @cases = Case.all
  end
  def new
    @cas = Case.new(:deadline => DateTime.now + 30)
    @cas.email = current_user.email
  end
  def show
  end
  def edit
  end
  def create
    @cas = Case.new(case_params)
    @cas.user_id = current_user.id
    @cas.save
    respond_with(@cas)
  end
  def update
    @cas.update(case_params)
    respond_with(@cas)
  end
  def destroy
    @cas.destroy
    respond_with(@cas)
  end

  private
  def set_case
    @cas = current_user.cases.find(params[:id]) if current_user
    @cas = Case.find(params[:id])
  end
  def case_params
    params.require(:case).permit(:name, :description, :upper_bound, :lower_bound,:detail,:deadline,:email)
  end
end
