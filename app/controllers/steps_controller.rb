class StepsController < ApplicationController
  before_action :find_step, only: [:show]

  # def index
  #   @scenario = Scenario.find(params[:scenario_id])

  #   @c1 = Step.where(category: 1).first
  #   @c2 = Step.where(category: 2).first
  #   @c3 = Step.where(category: 3).first
  # end

  def show
    # This render the indivual Scenario Step page
    @scenario = @step.scenario
    @record = Record.new
    # Checking for current category
    case @step.category
    when 1
      @steps = Step.where(category: 1, scenario_id: @scenario.id).order(priority: :asc)
    when 2
      @steps = Step.where(category: 2, scenario_id: @scenario.id).order(priority: :asc)
    when 3
      @steps = Step.where(category: 3, scenario_id: @scenario.id).order(priority: :asc)
    end
  end

  private

  def find_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:category)
  end
end
