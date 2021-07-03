class Nightrecord < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '  良眠  ' },
    { id: 3, name: '  浅眠  ' },
    { id: 4, name: '  無眠  ' },
  ]
 
   include ActiveHash::Associations
   has_many :Kiroku
 
  end
