class ReservationsController < ApplicationController
  before_action :set_place, only: %i[new create]
  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.place_id = @place.id
    @reservation.user_id = current_user.id
    @reservation.total_price = @place.price_per_hour * @reservation.hour_quantity
    if @reservation.save
      redirect_to @reservation
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
      redirect_to reservation_path(@reservation)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    # place = @reservation.place
    @reservation.destroy
    if Reservation.all.empty?
      redirect_to reservations_path, status: 200,
      flash: { notice: "No tienes reservaciones en el momento" }
    else
      redirect_to reservations_path, status: :see_other
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :visit_hour, :hour_quantity)
  end

  def set_place
    @place = Place.find(params[:place_id])
  end
end
