class RecipesController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def show
    end

    def new
        @recipe = current_user.recipes.build
    end

    def create
        @recipe = current_user.recipes.build(recipe_params)
        @category_ids = params[:recipe][:categorys]
        if @recipe.save
            @recipe.get_category_ids(@category_ids, @recipe)
            
            redirect_to new_recipe_path
        else
            render :new
        end
    end

    def update
    end

    def delete
    end

    private
        def recipe_params
            params.require(:recipe).permit(:title, :url, :info, :content)
        end
end