class ArgumentsController < ApplicationController
  # def index
  #   @arguments = Argument.all
  # end

  def new
    @argument = Argument.new
    @option = Option.find(params[:option_id])
  end

  def create
    @option = Option.find(params[:option_id])
    @argument = Argument.new(argument_params)
    @argument.option = @option
    if @argument.save
      redirect_to option_path(@option)
    else
      render 'options/show', status: :unprocessable_entity
    end
  end

  def destroy
    @argument = Argument.find(params[:id])
    @argument.destroy
    redirect_to decisions_path(@decision), status: :see_other
  end

  private

  def argument_params
    params.require(:argument).permit(:argument_name, :score)
  end
end
