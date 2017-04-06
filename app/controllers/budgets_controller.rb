class BudgetsController < ApplicationController
  def index
    @budgets = Budget.all
  end

  def show
    @budget = Budget.find(params[:id])
  end

  def edit
    @budget = Budget.find(params[:id])
  end

  def update
    @budget = Budget.find(params[:id])
    if @budget.update(budget_params)
      redirect_to budgets_path
    else
      render 'edit'
    end
  end

  def new
      @budget = Budget.new
  end

  def destroy
      @budget = Budget.find(params[:id])
      @budget.destroy
      redirect_to budgets_path
  end

  def create
      @budget = Budget.new(budget_params)
      @budget.current_amount = @budget.total_amount
      if @budget.save
          flash[:success] = "New Budget Recorded"
          redirect_to budgets_path
      end
  end

  private
  def budget_params
    params.require(
    :budget
    ).permit(
    :total_amount,
    :user_id,
    :current_amount
    )
  end
end
