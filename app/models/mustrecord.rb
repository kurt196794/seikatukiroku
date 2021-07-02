class Mustrecord < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :Meal

  validates :meal_id, numericality: { other_than: 1 } 

end