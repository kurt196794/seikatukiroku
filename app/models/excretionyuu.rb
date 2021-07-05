class Excretionyuu < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '排尿あり/排便あり' },
    { id: 3, name: '排尿あり/排便なし' },
    { id: 4, name: '排尿なし/排便あり' },
    { id: 5, name: '排尿なし/排便なし' },
    { id: 6, name: '未確認' },
  ]
   include ActiveHash::Associations
   has_many :Record
 
  end