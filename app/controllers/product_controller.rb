class ProductController < ApplicationController
  def index
    @all_products = Product.all
    @products = Product.all.page(params[:page]).per(6)
  end

  def bakery_products
    @bakery_products = Product.where(category_id: 1)
  end

  def import_products
    @import_products = Product.where(category_id: 6)
  end

  def deli_products
    @deli_products = Product.where(category_id: 5)
  end

  def giftware_products
    @giftware_products = Product.where(category_id: 7)
  end

  def new_products
    @new_products = Product.where(new: true)
  end

  def sale_products
    @sale_products = Product.where(sale: true)
  end
end
