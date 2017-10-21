class Admin::AppointmentsController < Admin::BaseController

  def index
    @appointments = Appointment.all
  end
end
