class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def index
    @meals = current_user.meals
  end

  def show
  end

  def new
    @meal = current_user.meals.new
  end

  def create
    @meal = current_user.meals.new(meal_params)
    if @meal.save
      redirect_to meals_path, notice: 'Repas ajouté avec success !'
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @meal.update(meal_params)
      redirect_to meals_path, notice: 'Repas modifier avec success !'
    else
      render :edit
    end
  end

  def destroy
    if @meal.destroy
      redirect_to meals_path, notice: 'Repas supprimer avec success !'
    end
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :category, :contry, :quantity, :is_delivery, :cooked_at, :description, :photo, :photo_cache)
  end

end
