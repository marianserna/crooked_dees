class Admin::AppointmentsController < Admin::BaseController

  before_action :load_appointment, only: [:confirm]

  def index
    @appointments = Appointment.order(created_at: :desc)
  end

  def confirm
    @appointment.status = 'confirmed'
    @appointment.save!
    flash[:notice] = "Appointment has been confirmed"
    redirect_to admin_appointments_url
  end

  private

  def load_appointment
    @appointment = Appointment.find(params[:id])
  end
end
