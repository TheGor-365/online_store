class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show; end
  def edit; end

  def create
    @product = Product.new(product_params)
    @product.category = Category.find(params[:product][:category_id])

    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def update
    @product.category = Category.find(params[:product][:category_id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      :title,
      :description,
      :price,
      :is_best_offer,
      :image,
      :image_cache,
      :category_id
    )
  end

end
