class MealsController < ApplicationController

  def index
    @meals = current_user.meals
  end

  def show

  end

  def new
    @meal = Meal.new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
