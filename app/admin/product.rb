ActiveAdmin.register Product do

  permit_params :list, :of, :attributes, :on, :model, :name, :desc, :stock_q, :manufacture, :price, :category_id, :new, :sale, :photo

  form :html => {:multipart => true} do |f|
    f.inputs "Products Details" do
      f.input :name
      f.input :desc
      f.input :price
      f.input :stock_q
      f.input :manufacture
      f.input :category_id
      f.input :photo
    end
    f.actions
  end
  
  index do
    id_column
    column :name
    column :desc
    column :price
    column :stock_q
    column :category_id
    column :photo
    actions
  end
  
end
