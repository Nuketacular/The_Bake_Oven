class HomeController < ApplicationController
  def index
    @product_deals = Product.where(sale: true).limit(3)
    @product_new = Product.where(new: true).limit(3)
    @store_news = StoreNews.all.limit(3)
  end

  def search_results
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @search_results = Product.where('name LIKE ?', wildcard_keywords)
    @category_search_results = Product.where('name LIKE ? AND category_id = ?',
                                             wildcard_keywords, params[:category_id])
  end
end
