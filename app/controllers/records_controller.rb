class RecordsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
 # before_action :set_kiroku, except: [:new, :create,]

  def index
    @records = Record.all
  
  end

  def new
    @record = Record.new
  end

  #def show
    #@records = Record.all
  #3@record = Record.find(params[:id])
  #end

  #def edit
  #end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to root_path
   else
     render :new
   end
  end

  def destroy
    @record.destroy
   end

  private

  def record_params
    params.require(:record).permit(:name,:room,:mealasa_id,:mealhiru_id,:mealyuu_id,:hydrationasa,:hydrationhiru,:hydrationyuu,
    :excretionasa_id,:excretionhiru_id,:excretionyuu_id,:vitalasa,:vitalhiru,:vitalyuu,
    :bathe_id,:nightrecord_id,:diary,:nightdiary,:accident,:message).merge(user_id: current_user.id)
  end

 #def set_kiroku
  #@kiroku = Kiroku.find(params[:id])
  #end
end