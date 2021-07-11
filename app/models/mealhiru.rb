class Mealhiru < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1/10割' },
    { id: 3, name: '2/10割' },
    { id: 4, name: '3/10割' },
    { id: 5, name: '4/10割' },
    { id: 6, name: '5/10割' },
    { id: 7, name: '6/10割' },
    { id: 8, name: '7/10割' },
    { id: 9, name: '8/10割' },
    { id: 10, name: '9/10割' },
    { id: 11, name: '10/10割'},
    { id: 12, name: '欠食' },
  ]
 
   include ActiveHash::Associations
   has_many :Record

  end