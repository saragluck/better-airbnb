class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render template: "reservations/index"
  end

  def create
    @reservation = Reservation.new
    @reservation.user_id = params[:reservation][:user_id]
    @reservation.room_id = params[:reservation][:room_id]
    @reservation.start_date = params[:reservation][:start_date]
    @reservation.end_date = params[:reservation][:end_date]
    #@reservation.price = params[:reservation][:price]
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
