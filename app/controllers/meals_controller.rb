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
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    if @meal.save
    flash[:notice] = "Meals #{@meal.name} has been created"
    else
    render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])

  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)
    redirect_to root_path
    #@meal.user = current_user

  end

  def destroy
    @meal = Meal.find(meal_params)
    @meal.destroy
    redirect_to root_path

  end

  private

  def meal_params
    params.require(:meal).permit(:name, :category, :country, :quantity, :is_delivery, :cooked_at, :user_id )
  end





end
