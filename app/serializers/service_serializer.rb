class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :name, :description
end
