# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  image      :string
#  active     :boolean
#  account_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  # Connect model to uploader file
  mount_uploader :image, ImageUploader

  scope :active, -> { where active: true }
end
