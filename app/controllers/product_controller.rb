class ProductController < ApplicationController
  def index
    @all_products = Product.all.page params[:page]
    @products = Product.order(:name).page params[:page]
  end

  def bakery_products
    @bakery_products = Product.where(category_id: 1).page params[:page]
    @products = Product.order(:name).page params[:page]
  end

  def import_products
    @import_products = Product.where(category_id: 6).page params[:page]
    @products = Product.order(:name).page params[:page]
  end

  def deli_products
    @deli_products = Product.where(category_id: 5).page params[:page]
    @products = Product.order(:name).page params[:page]
  end

  def giftware_products
    @giftware_products = Product.where(category_id: 7).page params[:page]
    @products = Product.order(:name).page params[:page]
  end

  def new_products
    @new_products = Product.where(new: true).page params[:page]
    @products = Product.order(:name).page params[:page]
  end

  def sale_products
    @sale_products = Product.where(sale: true).page params[:page]
    @products = Product.order(:name).page params[:page]
  end

  def show_products
    @show_products = Product.find(params[:id])
  end

  def search_results
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @search_results = Product.where("name LIKE ?", wildcard_keywords)
  end
end
