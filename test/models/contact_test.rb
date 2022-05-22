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
require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
