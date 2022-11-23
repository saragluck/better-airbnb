class RoomsController < ApplicationController
  before_action :authenticate_user, except: [:index]

  def index
    @rooms = Room.all
    render template: "rooms/index"
  end

  def show
    if current_user.id != nil
      @room = Room.find_by(id: params[:id])
      render template: "rooms/show"
    else
      redirect_to "/login"
    end
  end

  def create
    @room = Room.new
    @room.user_id = current_user.id
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
    if current_user.id != nil
      @room = Room.find_by(id: params[:id])
      render template: "rooms/edit"
      @room.save
    else
      redirect_to "/login"
    end
  end

  def update
    @room = Room.find_by(id: params[:id])
    @room.price = params[:room][:price]
    @room.description = params[:room][:description]
    @room.save
    redirect_to "/rooms"
  end

  def destroy
    @room = Room.find_by(id: params[:id])
    @room.destroy
    redirect_to "/rooms", status: :see_other
  end
end
