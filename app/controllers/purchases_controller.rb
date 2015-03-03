class PurchasesController < ApplicationController

  def create
    if Purchase::Creator.new(buyer: current_user.unwrap, product_id: product_id).call
      flash[:notice] = 'You got it!'
    else
      flash[:error] = "You don't have enough credits to purchase this item"
    end

    redirect_to products_path
  end

  private

  def product_id
    purchase_params_for_create[:product_id]
  end

  def purchase_params_for_create
    params.require(:purchase).permit(:product_id)
  end

end

