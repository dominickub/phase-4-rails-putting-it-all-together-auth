class RecipesController < ApplicationController
    before_action :autorize
    def index
        recipes = Recipe.all
        render json: recipes, status: :ok
    end
end
