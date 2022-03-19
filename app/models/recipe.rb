# == Schema Information
#
# Table name: recipes
#
#  id         :bigint           not null, primary key
#  category   :string
#  content    :text
#  info       :text
#  title      :string           not null
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Recipe < ApplicationRecord
end
