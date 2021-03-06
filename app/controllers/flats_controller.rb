class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.after_save
      reditect_to flats_path(@flat)
    else
      render "new"
    end
  end

  def show; end

  def edit; end

  def update
    @flat.update(flat_params)
    reditect_to flats_path
  end

  def destroy
    flat.destroy
    reditect_to flats_path
  end


  private

  def set_flat
    @flat = Flat.find(params[:id])  # BEFORE ACTION
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end
end
