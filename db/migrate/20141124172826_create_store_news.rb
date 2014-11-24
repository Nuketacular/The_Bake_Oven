class CreateStoreNews < ActiveRecord::Migration
  def change
    create_table :store_news do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
