class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.decimal :price
      t.integer :stock_q
      t.string :manufacture

      t.timestamps
    end
  end
end
