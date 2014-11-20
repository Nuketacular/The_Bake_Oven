class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :phone
      t.string :email
      t.string :address
      t.string :postal_code

      t.timestamps
    end
  end
end
