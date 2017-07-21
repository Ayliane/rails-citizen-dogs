class DogWalksController < ApplicationController
  def index
    @dog_walks = DogWalk.all
  end

  def create
    @dog_walk = DogWalk.new
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
