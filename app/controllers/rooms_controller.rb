class RoomsController < ApplicationController
  def new
    
  end
  def select
    @rooms = Room.find_by(id: params[:id])
  end
  def search
    @rooms = Room.all.order(created_at: :desc)
  end
end
