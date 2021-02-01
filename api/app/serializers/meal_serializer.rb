class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_menu_id, :quantity, :eat_time
  belongs_to :meal_menu, serializer: MealMenuSerializer
end