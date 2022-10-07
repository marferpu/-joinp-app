class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_place, only: %i[show edit update destroy]
  def index
    if params[:query].present?
      @places = Place.search_by_category(params[:query])
    else
      @places = Place.all
    end
  end

  def show; end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    @place.user_id = current_user.id
    if @place.save
      redirect_to root_path, notice: "Se ha agregado correctamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @place.update(place_params)
      redirect_to place_path, notice: "Actualización exitosa"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @place.destroy
    redirect_to place_path, notice: "Eliminación exitosa", status: :see_other
  end

  private

  def place_params
    params.require(:place).permit(:title, :description, :address, :category, :price_per_hour, :capicity, photos: [])
  end

  def set_place
    @place = Place.find(params[:id])
  end
end
