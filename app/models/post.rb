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
  belongs_to :account
  before_create :set_active

  default_scope { order created_at: :desc }
  scope :active, -> { where active: true }

  def total_likes
    0
  end

  private
  def set_active
    self.active = true
  end
end
