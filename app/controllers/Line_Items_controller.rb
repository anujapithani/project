class LineItemsController < ApplicationController
    def show
        @lineitems = LineItem.all
    end
    private
   def lineitem_params
       params.require(:lineitem).permit(:product_id, :price, :cart_id, :quantity)
   end
end
