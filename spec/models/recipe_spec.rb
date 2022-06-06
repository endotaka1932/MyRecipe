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
    let!(:recipe) { build(:recipe, title: Faker::Lorem.characters(number: 26), user: user) }

    before do
      recipe.save
    end

    it 'レシピが保存できない' do
      expect(recipe.errors.messages[:title][0]).to eq('は25文字以内で入力してください')
    end
  end
end
