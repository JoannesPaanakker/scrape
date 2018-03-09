class OrdersController < ApplicationController
  def create
    package = Package.find(params[:package_id])
    order  = Order.create!(package_sku: package.sku, amount: package.price, state: 'pending')
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end

end
