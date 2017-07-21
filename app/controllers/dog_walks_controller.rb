class DogWalksController < ApplicationController
  before_action :set_dog_walk, only: [:show, :edit, :update, :destroy]

  def index
    @dog_walks = DogWalk.all
  end

  def new
    @dog_walk = DogWalk.new
  end

  def create
    @dog_walk = DogWalk.new(params[dog_walk_params])
    if @dog_walk.save
      redirect_to dog_walk_path(@dog_walk)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @dog_walk.update(params[dog_walk_params])
      redirect_to dog_walk_path(@dog_walk)
    else
      render :edit
    end
  end

  def destroy
    @dog_walk.destroy

    redirect_to dog_walks_path
  end

  private

  def dog_walk_params
    params.require(:dog_walk).permit(:title, :description, :date, :hour, :meeting_point, :available_spots)
  end

  def set_dog_walk
    @dog_walk = DogWalk.find(params[:id])
  end

end
