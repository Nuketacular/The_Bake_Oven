class AddPhotoToStoreNews < ActiveRecord::Migration
  def change
    add_column :store_news, :photo, :string
  end
end
