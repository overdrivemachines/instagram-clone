class Post < ApplicationRecord
  # Connect model to uploader file
  mount_uploader :image, ImageUploader
end
