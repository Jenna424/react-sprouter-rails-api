class GardenSerializer < ActiveModel::Serializer
  attributes :id, :name, :layout, :gardenType, :plant_ids

  def plant_ids
  	object.plants.map(&:id)
  end
end
