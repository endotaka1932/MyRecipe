class Categorys::SidesController < Categorys::ApplicationController
    
    def show
        category = Category.find_by(foodclass: 'サイド')
        category_id = category.id
        @recipes = RecipeCategory.where(category_id: category_id).includes(:recipe).order(created_at: :DESC)
    end
end