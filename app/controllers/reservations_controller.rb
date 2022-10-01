class ReservationsController < ApplicationController
  before_action :set_place, only: %i[new create show edit update destroy]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.place = @place
    @reservation.user = current_user
    if @reservation.save
      redirect_to place_path(@place)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    if @reservation.save
      redirect_to place_path(@place)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to place_path(@place), status: :see_other
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :visit_hour, :hour_quantity)
  end

  def set_place
    @place = Place.find(params[:place_id])
  end
end
