# == Schema Information
#
# Table name: recipe_processes
#
#  id          :bigint(8)        not null, primary key
#  title       :string(255)
#  description :text(65535)      not null
#  order       :integer          not null
#  post_id     :bigint(8)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :recipe_process do
    title "MyString"
    desciption "MyText"
    order 1
    post_id "MyString"
  end
end
