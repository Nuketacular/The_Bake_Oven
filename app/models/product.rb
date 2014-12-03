class Product < ActiveRecord::Base
  belongs_to :category
  validates :name, :price, :desc, :stock_q,
            :category_id, :manufacture, presence: true
  paginates_per 6
  mount_uploader :photo, ImageUploader
end
