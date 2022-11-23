class ReservationsController < ApplicationController
  require "date"
  before_action :authenticate_user

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
    @reservation.user_id = current_user.id
    @reservation.room_id = params[:reservation][:room_id]
    @reservation.start_date = params[:reservation][:start_date]
    @reservation.end_date = params[:reservation][:end_date]
    @reservation.days = params[:reservation][:days]

    #@reservation.total = params [:reservation][:total]
    @reservation.save
    redirect_to "/reservations"
  end

  def new
    @reservation = Reservation.new
    render template: "reservations/new"
  end

  def edit
    if current_user.id != nil
      @reservation = Reservation.find_by(id: params[:id])
      render template: "reservations/edit"
      @reservation.save
    else
      redirect_to "/login"
    end
  end

  def update
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.start_date = params[:reservation][:start_date]
    @reservation.end_date = params[:reservation][:end_date]
    @reservation.days = params[:reservation][:days]
    @reservation.save
    redirect_to "/reservations"
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    redirect_to "/reservations", status: :see_other
  end
end
