class ReservationsController < ApplicationController
  require "date"

  def index
    @reservations = Reservation.all
    render template: "reservations/index"
  end

  def show
    @reservation = Reservation.find_by(id: current_user.id)
    render template: "reservations/show"
  end

  def create
    @reservation = Reservation.new
    @reservation.user_id = params[:reservation][:user_id]
    @reservation.room_id = params[:reservation][:room_id]
    @reservation.start_date = params[:reservation][:start_date]
    @reservation.end_date = params[:reservation][:end_date]
    @reservation.stay_length = params[:reservation][:stay_length]

    #@reservation.total = params [:reservation][:total]
    @reservation.save
    redirect_to "/reservations"
  end

  def new
    @reservation = Reservation.new
    render template: "reservations/new"
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
