# README
・アプリ名 かいてきくん

・概要 
 介護の記録アプリ。介護記録である生活記録、実施記録の一括管理を行うことができます。

・制作背景(意図) 
 複雑な介護記録のアプリが多い中、現場で幅広い年齢層、国籍等に使用していただける様に職員または使用者の使いやすさを最重要点としています。入居者を軸に入力する事を考えた結果、入居者名をレコード、入力項目をカラム型に配置したレイアウトになっています。入力した項目はそのまま画面表示されます。
 食事、体温等現場での最低限をデフォルトで設定しておき、項目は現場の項目にあわせて付け加える事が可能です。

・DEMO

・工夫したポイント
 プルダウンで選択可能な項目はプルダウン形式にし、使い手の作業効率を図りました。
 申し送り機能を搭載。入居者の連絡事項、引き継ぎ、特記を簡単管理。
 レイアウトは色を抑えシンプルに作成、かつ項目がわかりやすい様にサイズ等の調整を細かく行っております。

・使用技術(開発環境)
 rails, github, AWS EC2

 .テスト用アカウント
  e_mail  kk@kk
  pass    111qqq

・課題や今後実装したい機能
 ①カレンダー、日にち指定
 ②未記入項目の色付け
 ③javaを使用した項目に対するアナウンスの発火表示


# DB設計

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

