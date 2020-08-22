class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Coctail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to_cocktail_path(@cocktail)
  end

  def cocktail_params
    params.require(:cocktail).permit(:ingredient, :dose)
  end
end
