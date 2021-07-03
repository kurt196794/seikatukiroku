class Bathe < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '○' },
    { id: 3, name: '拒否' },
    { id: 4, name: '不調の為中止' },
  ]
   include ActiveHash::Associations
   has_many :Kiroku
 
  end