class GardenSerializer < ActiveModel::Serializer
  attributes :id, :name, :layout, :garden_type, :plant_ids

  def plant_ids
    object.plants.map(&:id)
  end
end
