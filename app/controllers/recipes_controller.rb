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
        else
            render json: {error: "Recipe not found"}, status: :not_found
        end
    end

#     def destroy 
#         recipe = Recipe.find_by(id: params[:id]) 
    
#         if recipe.destroy 
#         head :no_content
    
#          else 
#             render json: { error: recipe.errors.messages }, status: 422
#         end 
#         end
end
