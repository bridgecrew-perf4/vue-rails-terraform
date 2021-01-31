class WeightSerializer < ActiveModel::Serializer
  attributes :id, :value, :body_fat_percentage, :measurement_time
end
