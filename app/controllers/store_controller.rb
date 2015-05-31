class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  skip_before_action :authorize
  
  def index
    @products = Product.order(:title)
    @visit_times = visit_time
  end

  private
    def visit_time
      if session[:visits].nil?
        session[:visits] = 1
      else
        session[:visits] += 1
      end
      session[:visits]
    end
end
