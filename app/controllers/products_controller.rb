class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: 'Product was successfully created'
    else
      render :new, error: 'Sumething is wrong'
    end
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully created'
    else
      render :edit, error: 'Something is wrong'
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Product was successfully destroyed'
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :description, :price, :is_best_offer, :image, :image_cache)
  end

end
