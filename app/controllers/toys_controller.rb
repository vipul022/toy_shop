class ToysController < ApplicationController
  before_action :find_toy, only: [:show, :edit, :update, :destroy] 
  def index
    @toys = Toy.all
  end

  def create
    @toy = Toy.create(toy_params)
    redirect_to @toy
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
    @toy.update(toy_params)
    redirect_to @toy
  end

  def destroy
    @toy.destroy
    redirect_to root_path
    
  end

  private
  def find_toy
    @toy = Toy.find(params[:id])
  end

  def toy_params 
      params.require(:toy).permit(:name, :date, :user)
    end
end
