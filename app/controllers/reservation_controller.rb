class ReservationController < ApplicationController
  def index
  end

  def create
  end

  def new
    @reservation = Reservation.new
    render template "reservation/new"
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
