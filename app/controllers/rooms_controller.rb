class RoomsController < ApplicationController

  def index
    @rooms = Room.all 
  end

  def show
    @room = Room.find_by(id: params[:id])
    @comments = @room.comments.new
    @show = @room.comments.index
  end

  def create
    room = Room.create(rooms_params)

    if room.save
      render json: {}, status: 201
    else
      render json: { error: room.errors.full_messages.first }, status: 422
    end
  end

 def update
    room = Room.find(params[:id])
    room.attributes = rooms_params
    if room.save
      render json: {}, status: 200
    else
      render json: { error: rooms.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    room = Room.find(params[:id])
    if room.destroy
      render json: {}, status: 200
    else
      render json: { error: room.errors.full_messages.first }, status: 422
    end
  end

  def rooms_params
    params.permit(:name, :description, :image_url, :youtube_url, :price)
  end
end