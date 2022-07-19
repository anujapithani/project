class ShoppingsController < ApplicationController
before_action :check_login
    def show
        @cart = Cart.where(user_id: session[:user_id]).first
        @line_item_count =  @cart.present? ? @cart.line_items.count : 0
        @products = Product.all
    end
end

