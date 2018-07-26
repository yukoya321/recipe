# == Schema Information
#
# Table name: tags
#
#  id   :bigint(8)        not null, primary key
#  name :string(255)      not null
#

class Tag < ApplicationRecord
  has_many :post_tags, dependent: :delete_all
  has_many :post, :through => :post_tags
  auto_strip_attributes :name, strip_double_byte_space: true
  validates :name, presence: true, uniqueness: true#, format: {with: /\A^[ぁ-んァ-ン一-龥]\z/}
end
