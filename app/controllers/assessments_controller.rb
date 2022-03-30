class AssessmentsController < ApplicationController
    before_action :authenticate_user!

    def new
        recipe = Recipe.find(params[:recipe_id])
        @assessment = recipe.build_assessment
    end

    def create
        
    end
end