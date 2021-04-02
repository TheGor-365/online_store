module ProductsHelper

  def product_image product, width, height
    image_path = product.image.present? ? product.image.url : 'product.png'
    image_tag(image_path, width: width, height: height, class: 'rounded')
  end

end
