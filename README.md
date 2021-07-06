# テーブル設計

## menu テーブル
| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | string  | null: false |
| description | string  | null: false |
| price       | integer | null: false |

## contact テーブル
| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| email        | string  | null: false |
| phone_number | string  | null: false |
| category_id  | integer | null: false |
| contents     | string  | null: false |
