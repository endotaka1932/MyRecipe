# == Schema Information
#
# Table name: recipes
#
#  id         :bigint           not null, primary key
#  content    :text
#  info       :text
#  title      :string           not null
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_recipes_on_user_id  (user_id)
#
class Recipe < ApplicationRecord
    
    validates :title, presence: true, length: {maximum: 25}

    belongs_to :user
    has_many :recipe_categorys
    has_many :categories, through: :recipe_categorys, dependent: :destroy
    has_one :assessment, dependent: :destroy

    def get_category_ids(category_ids, recipe)
        if category_ids.size >= 2
            category_ids.shift
            category_ids.each do |category_id|
                category = Category.find(category_id.to_i)
                recipe.categories << category
            end
        end
    end
end
