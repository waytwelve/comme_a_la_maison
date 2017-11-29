class MealsController < ApplicationController
 
  before_action :set_meal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  before_action :same_user, only: [:edit, :update]

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
      if params[:photos]
        params[:images].each do |i|
          @meal.photos.create(image: i)
        end
      end
      @photos = @meal.photos
      redirect_to edit_meal_path(@meal), notice: 'Repas ajouté avec success !'
    else
      render :new
    end
  end

  def edit
    @photos = @meal.photos

  end

  def update
    if @meal.update(meal_params)
      if params[:photos]
        params[:images].each do |i|
          @meal.photos.create(image: i)
        end
      end
      @photos = @meal.photos
      redirect_to edit_meal_path(@meal), notice: 'Repas modifier avec success !'
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

  def same_user
    if current_user.id != @meal.user_id
      flash[:danger] = "Vous ne pouver pas modifier cette page !"
      redirect_to root_path
    end
  end

end
