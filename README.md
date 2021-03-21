# README

# Table Design

## users

| Column             | Type   | Options                       |
| ------------------ | ------ | ----------------------------- |
| email              | string | null: false, uniqueness: true |
| encrypted_password | string | null: false                   |
| nickname           | string | null: false                   |
| surname            | string | null: false                   |
| name               | string | null: false                   |
| surname_furigana   | string | null: false                   |
| name_furigana      | string | null: false                   |
| date_of_birth      | date   | null: false                   |

### Association

- has_many :items
- has_many :comments
- has_many :orders

## addresses

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false (active hash)      |
| city          | string     | null: false                    |
| house_number  | string     | null: false                    |
| building      | string     |                                |
| phone_number  | string     | null: false                    |
| order         | references | null: false, foreign_key: true |

### Association

- belongs_to :prefecture
- belongs_to :order

## items

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| title                | string     | null: false                    |
| price                | integer    | null: false                    |
| description          | text       | null: false                    |
| condition_id         | integer    | null: false (active hash)      |
| mailing_cost_id      | integer    | null: false (active hash)      |
| mailer_loc_id        | integer    | null: false (active hash)      |
| days_til_post_id     | integer    | null: false (active hash)      |
| category_id          | integer    | null: false (active hash)      |
| in_stock(追加実装用) | boolean    | null: false, foreign_key: true |
| user                 | references | null: false, foreign_key: true |

### Association

- has_one :order
- has_many :comments
- has_many :item_tag_relations
- has_many :brand_tags, through: :item_tag_relations
- belongs_to :user
- belongs_to :condition
- belongs_to :mailing_cost
- belongs_to :prefecture
- belongs_to :days_til_post
- belongs_to :category

## brand_tags

| Column      | Type    | Options                   |
| ----------- | ------- | ------------------------- |
| name        | string  | null: false               |
| category_id | integer | null: false (active hash) |

### Association

- has_many :item_tag_relations
- has_many :items, through: :item_tag_relations
- belongs_to :category

## item_tag_relations （追加実装で使用予定）

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| item      | references | null: false, foreign_key: true |
| brand_tag | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :brand_tag

## comments

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## orders

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| item   | references | null: false, foreign_key: true |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user
- has_one :address

# System dependencies

DEPENDENCIES
active_hash
aws-sdk-s3
bootsnap (>= 1.4.4)
bootstrap-datepicker-rails
byebug
capybara (>= 3.26)
devise
factory_bot_rails
faker
image_processing (~> 1.2)
jbuilder (~> 2.7)
listen (~> 3.3)
mini_magick
payjp
pg (~> 1.1)
pry-rails
puma (~> 5.0)
rack-mini-profiler (~> 2.0)
rails (~> 6.1.3)
rspec-rails (>= 2.0.0.beta)
sass-rails (>= 6)
selenium-webdriver
spring
turbolinks (~> 5)
tzinfo-data
web-console (>= 4.1.0)
webdrivers
webpacker (~> 5.0)

# Ruby Ver

3.0.0

# Rails Ver

6.1.3

# Bundled With

2.1.4

# Configuration

database.yml:
unicode

application.js:
turbolinks disabled

# Database

Postgresql 13.0

# ...
