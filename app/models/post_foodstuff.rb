class PostFoodstuff < ApplicationRecord
  belongs_to :post
  belongs_to :foodstuff
end
