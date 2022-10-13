class RecipesController < ApplicationController

    def index
     recipes =Recipe.all
     render json: Recipe.all, status: :ok
    end    

    def show
      recipe = Recipe.find_by(id: params[:id])
    if recipe
        render json: recipe, status: :ok
    else
        render json: {error: "Recipe not found"}, status: :not_found
    end
end

    def update
        recipe = Recipe.find_by(id: params[:id])
        if recipe
            render json: { errors: invalid.errors.full_messages }, status: :unprocessable_entity
        # elseif recipe.valid?
        #     recipe.update!(recipe_params)
        #     render json: recipe, status: :ok
        else
            render json: {error: "Recipe not found"}, status: :not_found
        end
    end

    # private
    # def recipe_params

    # end
end
