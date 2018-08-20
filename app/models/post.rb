# == Schema Information
#
# Table name: posts
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  description :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image       :string(255)
#

class Post < ApplicationRecord
  has_many :recipe_processes, dependent: :destroy
  has_many :foodstuff_amounts, dependent: :destroy
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags
  has_many :post_foodstuffs, dependent: :destroy
  has_many :foodstuffs, through: :post_foodstuffs
  accepts_nested_attributes_for :recipe_processes, allow_destroy: true
  accepts_nested_attributes_for :foodstuff_amounts, allow_destroy: true
  accepts_nested_attributes_for :post_tags, :post_foodstuffs, allow_destroy: true
  mount_uploader :image, PostImageUploader
  validates :name, presence: true, length: { maximum: 75 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :image, presence: true
  validates :recipe_processes, :length => { :minimum => 1}
  
  
  # def reject_(attribute)
  #   attribute['school_name'].blank?
  # end
end
