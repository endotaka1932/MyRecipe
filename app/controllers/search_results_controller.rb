class SearchResultsController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @word = params[:word]
        @recipes = Recipe.where("title LIKE?", "%#{@word}%")
    end
end