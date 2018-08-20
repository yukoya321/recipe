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

FactoryBot.define do
  factory :foodstuff_amount do
    
  end
end
