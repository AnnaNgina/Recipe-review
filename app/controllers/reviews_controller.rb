class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_error
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    #  before_action :authorize
    
        def index
           render json: Review.all,status: :ok
        end 
    
       
    
        def show
            review= find_review
            render json: review, status: :ok
        end
    
         def update
            review = find_review
            review.update!(review_params)
            render json: review
        end
    
    
        def create
            review= Review.create!(review_params)
            render json: review, status: :created
        end
    
        def destroy
            review = find_review
            review.destroy
            head :no_content
        end
    
        private
    
        def render_error
            render json: { error: "review not found" }, status: :not_found
         end
        
        def find_review
             Review.find(params[:id])
        end
        
        def review_params
            params.permit(:title, :recipe_id, :description)
        end
    
        def render_unprocessable_entity_response(invalid)
            render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
        end
    
        def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
        end
      end
