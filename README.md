# テーブル設計

## menu テーブル
| Column      | Type    | Options |
| ----------- | ------- | --------|
| name        | string  |         |
| description | text    |         |
| price       | integer |         |

## contact テーブル
| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| email        | string  | null: false |
| phone_number | string  | null: false |
| category_id  | integer | null: false |
| contents     | text    | null: false |
