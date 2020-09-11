class StoreController < ApplicationController
  include CurrentCart
  include VisitCounter
  before_action :set_cart
  def index
    @visits = count_visits
    @products = Product.order(:title)
  end
end
