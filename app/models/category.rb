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
class Category < ApplicationRecord
    has_many :recipe_categorys
end
