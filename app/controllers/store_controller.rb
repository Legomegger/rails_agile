class StoreController < ApplicationController
  include VisitCounter
  # before_action :count_visits, only: [:index]
  def index
    @visits = count_visits
    @products = Product.order(:title)
  end
end
