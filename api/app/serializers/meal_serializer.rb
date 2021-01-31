class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_menu_id, :quantity, :meal_time
  belongs_to :meal_menu, serializer: MealMenuSerializer
end