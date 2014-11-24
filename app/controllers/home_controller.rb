class HomeController < ApplicationController
  def index
    @productDeals = Product.where(sale: true).limit(3)
    @productNew = Product.where(new: true).limit(3)
    @store_news = StoreNews.all.limit(3)
  end
end
