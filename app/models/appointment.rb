class Appointment < ApplicationRecord

  belongs_to :user
  belongs_to :dentist

  def send_confirmation_sms
    # set up a client to talk to the Twilio REST API
    client = Twilio::REST::Client.new(
      ENV.fetch('TWILIO_ID'),
      ENV.fetch('TWILIO_TOKEN')
    )

    client.api.account.messages.create(
      from: ENV.fetch('PHONE_NUMBER'),
      to: "+1#{self.user.phone}",
      body: "You have an appointment on #{self.appointment_at} with #{self.dentist.name}"
    )
  end


end
