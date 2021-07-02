class KirokusController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @kirokus = Kiroku.all

  end

  def new
    @kiroku = Kiroku.new
  end

  def create
    @kiroku = Kiroku.new(kiroku_params)
    if @akiroku.save
      redirect_to root_path
    end
  end
  
  private

  def article_params
    params.require(:kiroku).permit(:meal_id)
  end

  
end
