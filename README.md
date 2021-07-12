# テーブル設計

## user テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

## contact テーブル
| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| email        | string  |             |
| phone_number | string  |             |
| category_id  | integer | null: false |
| contents     | text    | null: false |
| reply_id     | integer | null: false |

## menu テーブル
| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| description | text       | null: false                    |
| price       | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |

## news テーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| post     | date       | null: false                    |
| contents | text       | null: false                    |
| title    | string     | null: false                    |
| user     | references | null: false, foreign_key: true |
