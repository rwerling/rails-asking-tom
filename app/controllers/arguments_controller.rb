class ArgumentsController < ApplicationController
  def index
    @arguments = Argument.all
  end

  def new
    @argument = Argument.new
  end

  def create
    @argument = Argument.new(argument_params)
    @argument.save
    redirect_to argument_path
  end

  private

  def argument_params
    params.require(:argument).permit(:argument_name)
  end
end
