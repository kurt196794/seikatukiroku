class RecordsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_records, except: [:new, :create,:index]

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def show
  end

  def edit
  end


  def update
    @record.update(record_params)
    redirect_to root_path
  end


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
   redirect_to root_path
   end

  private

  def record_params
    params.require(:record).permit(:name,:room,:mealasa_id,:mealhiru_id,:mealyuu_id,:hydrationasa,:hydrationhiru,:hydrationyuu,
    :excretionasa_id,:excretionhiru_id,:excretionyuu_id,:vitalasa,:vitalhiru,:vitalyuu,
    :bathe_id,:nightrecord_id,:diary,:nightdiary,:accident,:message).merge(user_id: current_user.id)
  end

 def set_records
  @record = Record.find(params[:id])
 end
end