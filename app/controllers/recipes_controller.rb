class RecipesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_error
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    #  before_action :authorize
    
        def index
           render json: Recipe.all,status: :ok
        end 
    
       
    
        def show
            recipe= find_recipe
            render json: recipe, status: :ok
        end
    
         def update
            recipe = find_recipe
            Recipe.update!(recipe_params)
            render json: recipe
        end
    
    
        def create
            recipe= Recipe.create!(recipe_params)
            render json: recipe, status: :created
        end
    
        def destroy
            recipe = find_recipe
            recipe.destroy
            head :no_content
        end
    
        private
    
        def render_error
            render json: { error: "Recipe not found" }, status: :not_found
         end
        
        def find_recipe
             Recipe.find(params[:id])
        end
        
        def recipe_params
            params.permit(:name, :image_url, :description)
        end
    
        def render_unprocessable_entity_response(invalid)
            render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
        end
    
        def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
        end
      end
