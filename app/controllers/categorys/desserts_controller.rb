class Categorys::DessertsController < Categorys::ApplicationController
    
    def show
        category = Category.find_by(foodclass: 'デザート')
        category_id = category.id
        @recipes = RecipeCategory.where(category_id: category_id).includes(:recipe)
    end
end