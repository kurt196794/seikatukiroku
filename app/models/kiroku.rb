class Kiroku < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :Mealasa
  belongs_to :Mealhiru
  belongs_to :Mealyuu
  belongs_to :Excretionasa
  belongs_to :excretionhiru
  belongs_to :Excretionyuu
  belongs_to :Bathe
  belongs_to :Nightrecord

  #validates :name 
 

end
