class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :status
      t.decimal :order_amount
      t.date :date

      t.timestamps
    end
  end
end
