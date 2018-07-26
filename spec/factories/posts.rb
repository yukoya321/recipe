# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  desciption :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :post do
    name ""
    desciption ""
  end
end
