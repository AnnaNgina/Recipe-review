lass RecipesController < ApplicationController
    protect_from_forgery prepend: true

    def index
     render json: Recipe.all, status: :ok
    end   

    def show
        recipe = Recipe.find_by(id: params[:id])
      if recipe
          render json: recipe, status: :ok
      else
          render json: { error: "Review not found" }, status: :not_found
      end
    end

    def create
        recipe = Recipe.create(recipe_params)
       

        #  if recipe.save
        render json: recipe, status: :created
   

    #   else
    #     render json: { error: recipe.errors.messages }, status 422 
    #     end
    end   
    def update
        recipe = Recipe.find_by(id:params[:id])

        if recipe
            recipe.update(recipe_params)
            render json:recipe ,status: :accepted

        else
            
            render json:{error: "Recipe not found"}, status: :not_found
        end
    end        
    def destroy
        recipe = Recipe.find_by(id:params[:id])

        if recipe
            recipe.destroy
            head :no_content
        else
            render json {error:"Recipe not found"}, status: :not_found
        end
    end            

    private
    def recipe_params
        params.permit(:name, :image_url, :description)
    end    


