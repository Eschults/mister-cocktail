class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = set_ingredient
    # raise
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktails_path
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail_id)
  end

  private

  def dose_params
    params.require(:dose).permit(:amount)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:dose][:ingredient_id])
  end
end
