# テーブル設計

## menu テーブル
| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | string  | null: false |
| description | text    | null: false |
| price       | integer | null: false |

## contact テーブル
| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| email        | string  |             |
| phone_number | string  |             |
| category_id  | integer | null: false |
| contents     | text    | null: false |
| reply_id     | integer | null: false |
