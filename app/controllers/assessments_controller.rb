class AssessmentsController < ApplicationController
    before_action :authenticate_user!

    def new
        recipe = Recipe.find(params[:recipe_id])
        @assessment = recipe.build_assessment
    end

    def create
        recipe = Recipe.find(params[:recipe_id])
        @assessment = recipe.build_assessment(assessment_params)
        @assessment.revenge = params[:revenge]
        if @assessment.save
            redirect_to recipe_path(recipe.id)
        else
            render :new
        end
    end

    def edit
        @recipe = Recipe.find(params[:recipe_id])
        @assessment = @recipe.assessment
    end

    def update
        recipe = Recipe.find(params[:recipe_id])
        @assessment = recipe.build_assessment(assessment_params)
        @assessment.revenge = params[:revenge]
        if @assessment.update(assessment_params)
            redirect_to recipe_path(recipe.id)
        else
            render :edit
        end
    end

    private
        def assessment_params
            params.require(:assessment).permit(:taste, :easily, :cost, :revenge)
        end
end