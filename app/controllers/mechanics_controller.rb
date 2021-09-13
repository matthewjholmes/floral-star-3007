class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:id])
  end

  def rides
    mechanic = Mechanic.find(params[:id])
    mechanic.rides.all
  end
end
