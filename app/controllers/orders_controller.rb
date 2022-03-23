class OrdersController < ApplicationController
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
    # subtotal is quantity * price
    # find the quantity
    # find the price
    # multiply them
    
    product = Product.find_by(id: params[:product_id])    
    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = calculated_subtotal * 0.09
    
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax,
    )
    order.save
    render json: order.as_json
  end

  def show
    order = Order.find_by(id: params[:id])
    if order.user_id == current_user.id
      render template: "orders/show"
    else
      render json: {}, status: :unauthorized
    end
  end
end

