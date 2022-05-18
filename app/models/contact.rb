# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  content    :text             not null
#  email      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
    validates :email, presence: true, 
                      length: {maximum:255},
                      format: {with:/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

    validates :content, presence: true
end
