class ReviewsController < ApplicationController
    before_action :require_login
  
    def create
        @room = Room.find(params[:room_id])
        @review = @room.reviews.create(review_params)
        @user = User.find(current_user.id)
        @review.user_name = @user.user_name
        redirect_to room_path(@room)
    end



    def destroy
        @room = Room.find(params[:room_id])
        @review = @room.reviews.find(params[:id])
        @review.destroy
        flash.notice = "Review deleted!"
    
        redirect_to room_path(@review.room_id)
    end
    

    private
        def review_params
            params.require(:review).permit(:user_name, :body)
        end

end

