class KirokusController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  #before_action :set_kiroku, except: [:index, :new, :create,]

  def index
    @kirokus = Kiroku.all
    #@kiroku = Kiroku.find(params[:id])
  end

  def new
    @kiroku = Kiroku.new
  end

  def create
    @kiroku = Kiroku.new(kiroku_params)
    if @kiroku.save
      redirect_to root_path
   else
     render :new
   end
  end

  private

  def kiroku_params
    params.require(:kiroku).permit(:name,:mealasa_id,:mealhiru_id,:mealyuu_id,:hydrationasa,:hydrationhiru,:hydrationyuu,
    :excretionasa_id,:excretionhiru_id,:excretionyuu_id,:vitalasa,:vitalhiru,:vitalyuu,
    :bathe_id,:nightrecord_id,:diary,:nightdiary,:accident,:message).merge(user_id: current_user.id)
  end

  #def set_kiroku
  #  @kiroku = Kiroku.find(params[:id])
  #end
  
end
