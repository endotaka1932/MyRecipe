require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  let!(:user) { create(:user) }
  let!(:recipes) { create_list(:recipe, 5, user: user) }

  describe 'GET /recipes' do
    context 'ログインしている場合' do
      before do
        sign_in user
      end
      it '200ステータスが返ってくる' do
        get recipes_path
        expect(response).to have_http_status(200)
      end
    end

    context 'ログインしていない場合' do
      it 'ログイン画面に遷移する' do
        post recipes_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe 'POST /recipes' do
    context 'ログインしている場合' do
      before do
        sign_in user
      end
      it 'レシピが保存できる' do
        recipe_params = attributes_for(:recipe)
        post recipes_path({ recipe: recipe_params })
        expect(response).to have_http_status(304)
        expect(Recipe.last.title).to eq(recipe_params[:title])
      end
    end
  end
end
