class ShoppingsController < ApplicationController
    def show
        @products = Product.all
    end
end

