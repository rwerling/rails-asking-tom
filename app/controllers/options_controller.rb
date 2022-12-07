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
      respond_to do |format|
        format.html { redirect_to decision_path(@decision) }
        format.text { render partial: "decisions/option", locals: { option: @option }, formats: [:html] }
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @option = Option.find(params[:id])
    @argument = Argument.new
    @options = @option.decision.options.order(:id)
    next_index = @options.index(@option) + 1
    @next_option = @options[next_index]
  end

  def destroy
    @option = Option.find(params[:id])
    @decision = @option.decision
    @option.destroy
    redirect_to decision_path(@decision), status: :see_other
  end

  def ask
    @decision = Decision.find(params[:decision_id])
    @option = Option.find(params[:id])
    @options = Option.where(decision: @decision).where.not(id: @option)
  end

  def score
    @decision = Decision.find(params[:decision_id])
    @options = @decision.options.order(:id)
    @option = Option.find(params[:id])
    total = 0
    scores = params.select { |param| param.include?('argument') }
    scores.each_value { |score| total += score.to_i }
    @option.arguments.each { |argument| total += argument.score || 0 }
    @option.score = total
    @option.save
    next_index = @options.index(@option) + 1
    if @options.length > next_index
      next_option = @options[next_index]
      redirect_to ask_decision_option_path(@decision, next_option)
    else
      redirect_to decide_decision_path(@decision)
    end
  end

  private

  def option_params
    params.require(:option).permit(:option_name)
  end

end
