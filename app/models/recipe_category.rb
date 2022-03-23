# == Schema Information
#
# Table name: recipe_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  recipe_id   :bigint           not null
#
# Indexes
#
#  index_recipe_categories_on_category_id  (category_id)
#  index_recipe_categories_on_recipe_id    (recipe_id)
#
class RecipeCategory < ApplicationRecord
end
