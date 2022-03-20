# == Schema Information
#
# Table name: recipes
#
#  id         :bigint           not null, primary key
#  category   :integer
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
    enum categorys: {
      rice_dish: 0,
      soup: 1,
      main: 2,
      side_dish: 3,
      dessert: 4,
      others: 5
    }
    
    belongs_to :user
end
