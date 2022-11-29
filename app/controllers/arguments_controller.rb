class ArgumentsController < ApplicationController
  # def index
  #   @arguments = Argument.all
  # end

  def new
    @argument = Argument.new
    @option = Option.find(params[:option_id])
  end

  def create
    @decision = Decision.find(params[:decision_id])
    @option = Option.find(params[:option_id])
    @argument = Argument.new(argument_params)
    @argument.option = @option
    if @argument.save
      redirect_to decision_path(@decision)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @argument = Argument.find(params[:id])
    @argument.destroy
    redirect_to decisions_path(@decision), status: :see_other
  end

  private

  def argument_params
    params.require(:argument).permit(:argument_name)
  end
end
