class StoreNews < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
end
