class UserSerializer < ActiveModel::Serializer
  attributes :id, :target_weight, :target_body_fat
end
