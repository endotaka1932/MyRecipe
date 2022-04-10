class NocreatedsController < ApplicationController
    before_action :authenticate_user!

    def index
        @recipes = Recipe.left_outer_joins(:assessment).where(assessments: { id: nil })
    end
end