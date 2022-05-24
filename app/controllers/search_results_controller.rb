class SearchResultsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @word = params[:word]
        @recipes = Recipe.where("title LIKE?", "%#{@word}%").order(created_at: :DESC)
    end
end