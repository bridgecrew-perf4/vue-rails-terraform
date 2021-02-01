class WeightSerializer < ActiveModel::Serializer
  attributes :id, :value, :body_fat, :measurement_time
end
