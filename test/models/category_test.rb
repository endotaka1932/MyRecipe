# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  foodclass  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :bigint
#
# Indexes
#
#  index_categories_on_recipe_id  (recipe_id)
#
require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
