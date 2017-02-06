class BudgetController < ApplicationController
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.new(budget_params)
    if @budget.save
      flash[:success] = "New Budget Recorded"
  end

  private
  def budget_params
    params.require(
    :budget
    ).permit(
    :amount
    )
  end
end

end
