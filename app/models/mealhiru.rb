class Mealhiru < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1/10' },
    { id: 3, name: '2/10' },
    { id: 4, name: '3/10' },
    { id: 5, name: '4/10' },
    { id: 6, name: '5/10' },
    { id: 7, name: '6/10' },
    { id: 8, name: '7/10' },
    { id: 9, name: '8/10' },
    { id: 10, name: '9/10' },
    { id: 11, name: '10/10'},
    { id: 12, name: '欠食' },
  ]
 
   include ActiveHash::Associations
   has_many :Kiroku
 
  end