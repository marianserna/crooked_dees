class AppointmentsController < ApplicationController

  def index
    @appointment = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    
  end

  def edit

  end

  def update

  end

end
