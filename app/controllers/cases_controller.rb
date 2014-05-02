class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! ,except: [:show,:index ]
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
    respond_to do |format|
      if @cas.save
        format.html { redirect_to @cas, notice: 'Case was successfully created.' }
        format.json { render :show, status: :created, location: @cas }
      else
        format.html { render :new }
        format.json { render json: @cas.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    @cas = current_user.cases.find(params[:id])
    respond_to do |format|
      if @cas.update(case_params)
        format.html { redirect_to @cas, notice: 'Case was successfully updated.' }
        format.json { render :show, status: :ok, location: @cas }
      else
        format.html { render :edit }
        format.json { render json: @cas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @cas = current_user.cases.find(params[:id])
    @cas.destroy
    respond_to do |format|
      format.html { redirect_to cases_url }
      format.json { head :no_content }
    end
  end

  private
  def set_case
    @cas = Case.find(params[:id])
  end
  def case_params
    params.require(:case).permit(:name, :description, :upper_bound, :lower_bound,:detail,:deadline,:email)
  end
end
