class MealMenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :calorie, :carbohydrate, :protein, :lipid
end
