# == Schema Information
#
# Table name: recipe_processes
#
#  id         :bigint(8)        not null, primary key
#  title      :string(255)
#  desciption :text(65535)      not null
#  order      :integer          not null
#  post_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null


class RecipeProcess < ApplicationRecord
  belongs_to :post, optional: true, dependent: :delete
end
