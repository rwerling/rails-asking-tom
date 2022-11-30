class DecisionsController < ApplicationController
  def index
    @decisions = Decision.all
  end

  def show
    @decision = Decision.find(params[:id])
    @option = Option.new
  end

  def new
    @decision = Decision.new
  end

  def create
    @decision = Decision.new(decision_params)
    @decision.user_id = current_user.id
    # raise
    if @decision.save
      redirect_to decision_path(@decision)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @decision = Decision.find(params[:id])
    @decision.destroy
    redirect_to decisions_path, status: :see_other
  end

  private

  def decision_params
    params.require(:decision).permit(:decision_name)
  end
end
