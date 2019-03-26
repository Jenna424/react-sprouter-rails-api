class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :family, :max_quantity, :soil_specifications, :sow_season, :harvest_season
end
