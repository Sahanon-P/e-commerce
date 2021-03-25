class FishController < ApplicationController
  before_action :authenticate_admin!,only: [:create,:edit,:destroy]
  def index
    @fish = Fish.all
    @fish = @fish.page(params[:page]).per(5)
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def new
    puts "This is how you print out something."
    @fish = Fish.new
  end

  def edit
    @fish = Fish.find(params[:id])
  end

  def create
    @fish = Fish.create(fish_params)

    if @fish.invalid?
      flash[:error] = @fish.errors.full_messages
    end

    redirect_to action: :index
  end

  def update
    @fish = Fish.find(params[:id])
    @fish.update(fish_params)
    redirect_to action: :index
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy
    redirect_to action: :index
  end

  private

  def fish_params
    params.require(:fish).permit(:title, :description,:stock,:price)
  end
end
