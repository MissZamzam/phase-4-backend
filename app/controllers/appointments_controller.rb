class AppointmentsController < ApplicationController
    def index 
        render json: Appointment.all 
    end
   
    def show
        appointment = find_appointment
        render json: appointment
    end


    def create 
        appointment = Appointment.create(appointment_param)
        render json: appointment
    end

    private

    def find_appointment
        Appointment.find(params[:id])
    end

    def appointment_param
        params.permit(:customer_id, :service_id, :name, :email, :appointment_date, :appointment_time)
    end

end
