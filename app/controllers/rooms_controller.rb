class RoomsController < ApplicationController
  before_action :require_login, except: [:index, :show]

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])

    @review = Review.new
    @review.room_id = @room.id

  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.save
    flash.notice = "Room '#{@room.room_no}' created!"
    redirect_to rooms_path
  end
  
  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash.notice = "Room '#{@room.room_no}' destroyed!"

    redirect_to rooms_path
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update(room_params)
    flash.notice = "Room '#{@room.room_no}' Updated!"

    redirect_to rooms_path
  
  end

  private
    def room_params
        params.require(:room).permit(:room_no, :description, :price, :image)
    end

end
