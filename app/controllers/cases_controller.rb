class CasesController < ApplicationController
  before_action :set_case, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! ,except: [:show,:index ]
  def index
    @cases = Case.all
  end

  def new
  end

  def show
  end

  def edit
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_case
    @case = Case.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_params
      params.require(:case).permit(:name, :description, :upper_bound, :lower_bound)
    end
  end
