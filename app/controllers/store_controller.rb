class StoreController < ApplicationController
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
