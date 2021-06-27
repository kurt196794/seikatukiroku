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
| nickname              | string | null: false                   |
| email                 | string | null: false, unique:true      | 
| encrypted_ppassword   | string | null: false                   |
| ppassword             | string | null: false                   |

# Association
- has_many  :kirokus
- has_many  :okuri

# kiroku テーブル
| Column            | Type       | Options                         |
| ----------------  | ------     | ------------------------------- |
| hydration         | string     | null: false                     |
| Meal              | string     | null: false                     |
| excretion         | string     | null: false                     |
| bathe             | string     | null: false                     |
| vital             | string     | null: false                     |
| Nightdiary        | string     | null: false                     |
| diary             | string     | null: false                     |
| accident          | string     | null: false                     |


# Association
- belongs_to :user
- has_many   :okuris

# okuri テーブル
| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| mousiokuri       | string     | null: false                    |

# Association
- belongs_to :user
- has_many   :kirokus
>>>>>>> Stashed changes
