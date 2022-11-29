class DecisionsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index

  def index
    @decisions = Decision.all
  end

  def show
    @decision = Decision.find(params[:id])
  end

  def new
    @decision = Decision.new
  end

  def create
    @decision = Decision.new(decision_params)
    @decision.save
    redirect_to option_path
  end

  def destroy
    @decision = Decision.find(params[:id])
    @decision.destroy
    redirect_to decision_path, status: :see_other
  end

  private 

  def decision_params
    params.require(:decision).permit(:decision_name)
  end
end
