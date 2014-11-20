class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :hst
      t.decimal :gst
      t.decimal :pst

      t.timestamps
    end
  end
end
