# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  account_id :bigint           not null
#  post_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Like < ApplicationRecord
  belongs_to :post
  belongs_to :account
end
