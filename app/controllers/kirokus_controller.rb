class KirokusController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @kirokus = Kiroku.all
  end

  
end
