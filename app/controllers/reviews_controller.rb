class ReviewsController < ApplicationController
    before_action :require_login
  
    def create
        @room = Room.find(params[:room_id])

        @review = @room.reviews.new(review_params)
        @review.user_name = current_user.user_name
        respond_to do |format|
            if @review.save
              format.html { redirect_to room_path(@room), notice: "Review was successfully posted." }
              format.json { render :show, status: :created, location: @review }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @review.errors, status: :unprocessable_entity }
            end
          end
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

