# == Schema Information
#
# Table name: foodstuff_amounts
#
#  id         :bigint(8)        not null, primary key
#  foodstuff  :string(255)      not null
#  amount     :string(255)      not null
#  order      :integer          not null
#  post_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FoodstuffAmount < ApplicationRecord
  belongs_to :post, dependent: :delete
  validates :foodstuff, presence: true, length: { maximum: 75 }
  validates :amount, presence: true, length: { maximum: 75 }
end
