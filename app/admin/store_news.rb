ActiveAdmin.register StoreNews do
  
  permit_params :list, :of, :attributes, :on, :model, :title, :body, :photo

  form :html => {:multipart => true} do |f|
    f.inputs "Products Details" do
      f.input :title
      f.input :body
      f.input :photo
    end
    f.actions
  end
  
  index do
    id_column
    column :title
    column :body
    column :photo
    actions
  end

end
