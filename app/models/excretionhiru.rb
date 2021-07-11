class Excretionhiru < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '排尿○/排便○' },
    { id: 3, name: '排尿○/排便✕' },
    { id: 4, name: '排尿✕/排便◯' },
    { id: 5, name: '排尿✕/排便✕' },
    { id: 6, name: '未確認' },
  ]
   include ActiveHash::Associations
   has_many :Record
 
  end