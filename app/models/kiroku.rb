class Kiroku < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :mealasa
  belongs_to :mealhiru
  belongs_to :mealyuu
  belongs_to :excretionasa
  belongs_to :excretionhiru
  belongs_to :excretionyuu
  belongs_to :bathe
  belongs_to :nightrecord

  #validates :name 
 

end
