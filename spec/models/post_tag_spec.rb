# == Schema Information
#
# Table name: post_tags
#
#  id         :bigint(8)        not null, primary key
#  post_id    :bigint(8)
#  tag_id     :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe PostTag, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
