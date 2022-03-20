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
        if @recipe.save
            binding.pry
          redirect_to recipes_path
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
            params.require(:recipe).permit(:title, :url, :info, :content, :category)
        end

end