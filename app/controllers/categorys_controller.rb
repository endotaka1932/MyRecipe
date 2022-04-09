class CategorysController < ApplicationController
    before_action :authenticate_user!

    def index
        @assessments = Assessment.where(revenge: 'true').includes(:recipe)
    end
end