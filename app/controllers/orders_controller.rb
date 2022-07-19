class OrdersController < ApplicationController
before_action :check_login

    def create
      @cart = Cart.find(params[:id])
      @line_items = @cart.line_items       #LineItem.find_by(cart_id: params[:id])
      address = Address.find(params[:address_id])
      order = Order.create(user_id: session[:user_id], status: "Order Placed", address_id: address.id, address_line_1: address.address_line_1)
      @line_items.update(order_id: order.id)
      @cart.delete
      flash[:message] = "Your order has been placed"
      redirect_to '/shopping'
    end
      
    def index
      @orders = Order.where(user_id: session[:user_id])
    end

    private
    def order_params
    params.require(:order).permit(:final_price , :address_id ,:status, :address_line_1)
    end 
end
