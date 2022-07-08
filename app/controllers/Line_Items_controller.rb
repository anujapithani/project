class LineItemsController < ApplicationController
    def show
        @cart = Cart.where(user_id:session[:user_id]).first
        @lineitems = @cart.line_items
        @addresses = Address.where(user_id:session[:user_id])
    end

    def create
        @products = Product.find(params[:line_item][:product_id])
        @cart = current_cart
        @line_item = @cart.add_product(@product.id)    
    end

    private
    def lineitem_params
       params.require(:lineitem).permit(:product_id, :price, :cart_id, :quantity)
   end
end
