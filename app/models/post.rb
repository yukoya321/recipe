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

class Post < ApplicationRecord
  has_many :recipe_processes, dependent: :destroy
  has_many :post_tags
  has_many :tags, :through => :post_tags
  has_many :post_foodstuffs
  has_many :foodstuffs, :through => :post_foodstuffs
  accepts_nested_attributes_for :recipe_processes, :tags, :foodstuffs
end
