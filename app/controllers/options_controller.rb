class OptionsController < ApplicationController
  # def index
  # @options = Option.all
  # end

  def new
    @decision = Decision.find(params[:decision_id])
    @option = Option.new(params[:id])
  end

  def create
    @decision = Decision.find(params[:decision_id])
    @option = Option.new(option_params)
    @option.decision = @decision
    if @option.save
      redirect_to decision_path(@decision)
    else
      render :new, status: :unprocessable_entity
    end
  end

   def show
   @option = Option.find(params[:id])
   end

private

  def option_params
    params.require(:option).permit(:option_name)
  end
end
