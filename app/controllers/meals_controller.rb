class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @meals = Meal.all
   end

  def show
    @meal = Meal.find(params[:id])

  end

  def new
    @meal = Meal.new

  end

  def create
    @meal = Meal.new

  end

  def edit


  end

  def update

  end

  def destroy
    @meal = Meals.find(params[:id])
    @meal.destroy

  end

end
