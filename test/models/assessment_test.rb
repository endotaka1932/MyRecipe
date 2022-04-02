# == Schema Information
#
# Table name: assessments
#
#  id         :bigint           not null, primary key
#  cost       :float
#  easily     :float
#  revenge    :boolean
#  taste      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :bigint           not null
#
# Indexes
#
#  index_assessments_on_recipe_id  (recipe_id)
#
require 'test_helper'

class AssessmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
