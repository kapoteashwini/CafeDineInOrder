class AdminController < ApplicationController
  def index
    @orders = Order.all
  end

  def mark_as_served
    @order = Order.find(params[:id])
    if @order.update(status: 'Served')
      redirect_to admin_orders_path, notice: 'Order marked as served.'
    else
      redirect_to admin_orders_path, alert: 'Failed to update order status.'
    end
  end

  def mark_as_canceled
    @order = Order.find(params[:id])
    if @order.update(status: 'Canceled')
      redirect_to admin_orders_path, notice: 'Order marked as canceled.'
    else
      redirect_to admin_orders_path, alert: 'Failed to update order status.'
    end
  end


  
end
