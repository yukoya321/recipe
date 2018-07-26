# == Schema Information
#
# Table name: foodstuffs
#
#  id   :bigint(8)        not null, primary key
#  name :string(255)      not null
#

class Foodstuff < ApplicationRecord
  has_many :post
  has_many :post_foodstuffs, dependent: :delete_all
  has_many :post, :through => :post_foodstuffs
  auto_strip_attributes :name, strip_double_byte_space: true
  validates :name, presence: true, uniqueness: true
end
