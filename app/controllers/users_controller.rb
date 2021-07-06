class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = current_user.name
    @records = current_user.records
  end

  def edit
  end


end
