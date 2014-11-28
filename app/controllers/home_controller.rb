class HomeController < ApplicationController
  def index
    @product_deals = Product.where(sale: true).limit(3)
    @product_new = Product.where(new: true).limit(3)
    @store_news = StoreNews.all.limit(3)
  end
  
  def showProducts
    @show_products = Product.find(params[:id])
  end
end
