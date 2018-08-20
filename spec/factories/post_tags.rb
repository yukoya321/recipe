# == Schema Information
#
# Table name: post_tags
#
#  id         :bigint(8)        not null, primary key
#  post_id    :bigint(8)
#  tag_id     :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :post_tag do
    Post ""
    tag ""
  end
end
