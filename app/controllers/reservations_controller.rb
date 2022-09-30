class ReservationsController < ApplicationController
  before_action :set_reservations, only: %i[new create show edit update destroy]
  def index
    # @place = Place.find(params[:place_id])
    @reservations = Reservation.all # se debe conectar con el place?
  end

  def new
    @reservation = Reservation.new
  end

  def create
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
    @reservation = Reservation.update(params[reservation_params])
    @reservation.place = @place
    if @reservation.save
      redirect_to place_path(@place)
    else
      render :index, status: :unprocessable_entity
    end
  end

  # def show
  #   @reservation = Reservation.find(params[:id])
  # end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to place_path(@reservation.place), status: :see_other
  end

  private

  def reservation_params
    params.require(:reservations).permit(:date, :visit_hour, :hour_quantity)
  end

  def set_place
    @place = Place.find(params[:place_id])
  end
end
