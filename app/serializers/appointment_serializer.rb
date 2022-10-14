class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :service_id, :name, :email, :appointment_date, :appointment_time
end
