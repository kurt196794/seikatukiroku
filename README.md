# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<<<<<<< Updated upstream
=======

# テーブル設計

# users テーブル
| Column                | Type   | Options                       |
| --------              | ------ | ----------------------------  |
| name                  | string | null: false                   |
| email                 | string | null: false, unique:true      | 
| ppassword   | string  | string | null: false                   |
| encrypted_ppassword   | string | null: false                   |

# Association
- has_many  :records

# records テーブル
| Column            | Type       | Options                         |
| ----------------  | ------     | ------------------------------- |
| user              | references | null: false, foreign_key: true  |
| name              | string     | null: false                     |
| room              | string     | null: false                     |
| mealasa_id        | integer    |                                 |
| mealhiru_id       | integer    |                                 |
| mealyuu_id        | integer    |                                 |
| hydrationasa      | string     |                                 |
| hydrationhiru     | string     |                                 |
| hydrationyuu      | string     |                                 |
| excretionasa_id   | integer    |                                 |
| excretionhiru_id  | integer    |                                 |
| excretionyuu_id   | integer    |                                 |
| bathe_id          | integer    |                                 |
| vitalasa_id       | integer    |                                 |
| vitalhiru_id      | integer    |                                 |
| vitalyuu_id       | integer    |                                 |
| diary             | string     |                                 |
| nightdiary        | string     |                                 |
| accident          | string     |                                 |
| message           | string     |                                 |


# Association
- belongs_to :user

>>>>>>> Stashed changes
