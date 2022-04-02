class AssessmentsController < ApplicationController
    before_action :authenticate_user!

    def show
        @recipe = Recipe.find(params[:recipe_id])
    end

    def new
        recipe = Recipe.find(params[:recipe_id])
        @assessment = recipe.build_assessment
    end

    def create
        recipe = Recipe.find(params[:recipe_id])
        @assessment = recipe.build_assessment(assessment_params)
        if @assessment.save
            redirect_to recipe_path(recipe.id)
        else
            render :new
        end
    end

    def edit
        @recipe = Recipe.find(params[:recipe_id])
    end

    def update
        recipe = Recipe.find(params[:recipe_id])
        if @assessment.update(assessment_pamras)
            redirect_to recipe_path(recipe.id)
        else
            render :edit
        end
    end

    def destroy

    end

    private
        def assessment_params
            params.require(:assessment).permit(:taste, :easily, :cost, :revenge)
        end
end