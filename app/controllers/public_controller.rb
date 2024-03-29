class PublicController < ApplicationController

  before_action :set_cats

  def home
    @products = Product.all
<<<<<<< HEAD
=======
    @order_items = current_order.order_items.new
  end

  def index
    @products = Product.all
>>>>>>> cb88a97adb27259d83927b37ee6fd2cbb280bb07
    @order_items = current_order.order_items.new
  end

  def search
    query = params[:search]
    results = Product.where('title LIKE ?', "%#{query}%")

    if params[:filter] == 'Select Filter'
      @products = results
    else
      symbol = params[:filter].gsub(/ /, '_').downcase!.to_sym

      @products = results.where(symbol => true)
    end
  end

  private

  def set_cats
    @cats = Category.all.where(display: true)
  end

end
