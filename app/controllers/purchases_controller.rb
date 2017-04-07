class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
  end

  def destroy
      @purchase = Purchase.find(params[:id])
      @purchase.destroy
      redirect_to purchases_path
  end

  def create
      @purchase = Purchase.new(purchase_params)
      if @purchase.save
        redirect_to purchases_path
      else
        flash[:failure] = "Failed"
      end
  end

  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
    @purchase = Purchase.find(params[:id])
    if @purchase.update(purchase_params)
      redirect_to @purchase
    else
      render 'edit'
    end
  end

  skip_before_filter :verify_authenticity_token
  def purchase_item
      item_id = params[:item_id]
      @purchase = Purchase.new
      @purchase.amount = 1
      @purchase.item_id = item_id
      @purchase.save!
      redirect_to purchases_path
  end



  private
  def purchase_params
    params.require(:purchase).permit(
    :amount,
    :item_id
    )
  end

end
