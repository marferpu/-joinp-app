class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @place = Place.find(params[:reservation_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.place = @place
    if @reservation.save
      redirect_to place_path(@place)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

  def reservation_params
  end
end
