class Categorys::RiceController < Categorys::ApplicationController

    def show
        category = Category.find_by(foodclass: 'ライス')
        category_id = category.id
        @recipes = RecipeCategory.where(category_id: category_id).includes(:recipe)
    end
end