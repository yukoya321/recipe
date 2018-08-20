# == Schema Information
#
# Table name: post_foodstuffs
#
#  id           :bigint(8)        not null, primary key
#  post_id      :bigint(8)
#  foodstuff_id :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PostFoodstuff < ApplicationRecord
  belongs_to :post
  belongs_to :foodstuff
end
