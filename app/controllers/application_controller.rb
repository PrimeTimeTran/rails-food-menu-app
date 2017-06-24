class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    if session[:order_id].nil?
      cart = Order.create
      session[:order_id] = cart.id
      cart
    else
      Order.find(session[:order_id])
    end
  end
end
