# == Schema Information
#
# Table name: foodstuffs
#
#  id   :bigint(8)        not null, primary key
#  name :string(255)      not null
#

FactoryBot.define do
  factory :foodstuff do
    name "MyString"
  end
end
