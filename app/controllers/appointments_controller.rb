class AppointmentsController < ApplicationController

  def index
    @appointment = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    # which user is making the appointment? -> current_user comes from session
    @appointment.user_id = current_user.id

    if @appointment.save
      flash[:notice] = "Your appointment has been saved"
      redirect_to appointments_url
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def appointment_params
    params.require(:appointment).permit(:dentist_id, :appointment_at)
  end

end
