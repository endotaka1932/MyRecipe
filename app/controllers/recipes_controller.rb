class RecipesController < ApplicationController
    before_action :authenticate_user!

    def index
        @recipes = current_user.recipes.all.order(created_at: :DESC)
    end

    def show
        @recipe = current_user.recipes.find(params[:id])
    end

    def new
        @recipe = current_user.recipes.build
    end

    def create
        @recipe = current_user.recipes.build(recipe_params)
        @category_ids = params[:recipe][:categories]
        if @recipe.save
            @recipe.get_category_ids(@category_ids, @recipe)
            
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
        @recipe = current_user.recipes.find(params[:id])
        @category_ids = @recipe.categories.pluck(:id)
    end

    def update
        @recipe = current_user.recipes.find(params[:id])
        @category_ids = params[:recipe][:categories]
        if @recipe.update(recipe_params)
            RecipeCategory.where(recipe_id: @recipe.id).destroy_all
            @recipe.get_category_ids(@category_ids, @recipe)

            redirect_to recipe_path
        else
            render :edit
        end
    end

    def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy!
        redirect_to root_path
    end

    private
        def recipe_params
            params.require(:recipe).permit(:title, :url, :info, :content)
        end
end