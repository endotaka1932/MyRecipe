require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let!(:user) { create(:user) }

  context 'タイトルが存在する場合' do
    let!(:recipe) { build(:recipe, user: user) }

    it 'レシピを保存できる' do
      expect(recipe).to be_valid
    end
  end

  context 'タイトルが26文字以上である場合' do
    let!(:recipe) { build(:build, title: Faker::Lorem.characters(number: 26), user: user )}

    # it 'レシピが保存できない' do
    #   expect(recipe.errors.message[:title[0]].to eq('')
    # end
  end
end
