class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def show
    @dose = Dose.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :picture)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
