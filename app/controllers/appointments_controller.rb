class AppointmentsController < ApplicationController
    def index 
        render json: Appointment.all 
    end
   
    def show
        appointment = find_appointment
        render json: appointment
    end

    private

    def find_appointment
        Appointment.find(params[:id])
    end

end
