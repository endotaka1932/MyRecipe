class CategorysController < ApplicationController
    before_action :authenticate_user!

    def index
        # recipes = Recipe.all
        # @recipe = recipes.assessment.where(revenge: 'true')
    end
end