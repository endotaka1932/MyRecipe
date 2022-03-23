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
    
    belongs_to :user
    has_many :categorys, dependent: :destroy
end
