class OrdersController < ApplicationController
  # before_action :authenticate_user

  def index
    pp current_user
    if current_user
      @orders = current_user.orders
      render template: "orders/index"
    else
      render json: {}, status: :unauthorized
    end
  end
  
  def create
    # find items in shopping cart
      # items with current_user's id AND status of carted      
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    calculated_subtotal = 0 
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
    end

    order = Order.new(
      user_id: current_user.id,      
      subtotal: calculated_subtotal,
      tax: calculated_subtotal * 0.09,
      total: calculated_subtotal + (calculated_subtotal * 0.09),
    )
    order.save

    carted_products.each do |carted_product|
      carted_product.status = "purchased"
      carted_product.order_id = order.id
      carted_product.save
    end
    render json: order.as_json
  end

  def show
    order = Order.find_by(id: params[:id])
    if order.user_id == current_user.id.as_json
      render template: "orders/show"
    else
      render json: {}, status: :unauthorized
    end
  end

end

