# == Schema Information
#
# Table name: tags
#
#  id   :bigint(8)        not null, primary key
#  name :string(255)      not null
#

FactoryBot.define do
  factory :tag do
    name "MyString"
  end
end
