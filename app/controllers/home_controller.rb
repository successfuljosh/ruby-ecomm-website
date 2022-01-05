class HomeController < ApplicationController
  def index
  	@products = Product.all

    # @order_item = current_order.order_items.new   #from the application helper
  end

  def about
  end
end
