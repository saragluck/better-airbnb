class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render template: "/rooms"
  end

  def create
    @room = Room.new
    @room.user_id = params[:room][:user_id]
    @room.address = params[:room][:address]
    @room.city = params[:room][:city]
    @room.state = params[:room][:state]
    @room.price = params[:room][:price]
    @room.description = params[:room][:description]
    @room.home_type = params[:room][:home_type]
    @room.room_type = params[:room][:room_type]
    @room.total_occupancy = params[:room][:total_occupancy]
    @room.total_bedrooms = params[:room][:total_bedrooms]
    @room.total_bathrooms = params[:room][:total_bathrooms]
    @room.save
    redirect_to "/rooms"
  end

  def new
    @room = Room.new
    render template: "rooms/new"
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
