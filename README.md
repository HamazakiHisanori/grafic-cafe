# アプリケーション名
## 「参ぷる」

[![Image from Gyazo](https://i.gyazo.com/8cedf625da8ef19bc38a1700f143d0b3.png)](https://gyazo.com/8cedf625da8ef19bc38a1700f143d0b3)

# アプリケーション概要
**架空のカフェをイメージしたHP**

になります。
画像の差し替えを行うことでそれぞれがイメージしたHPになるよう汎用性が高く仕上げております。

今回はインフルエンサーをターゲットにしたオシャレで映えるカフェをイメージして作りました。

# URL
http://35.74.144.46/

# テスト用アカウント
## 従業員のログイン情報

email   **【sample@gmail】**

password   **【secretcode】**

# 利用方法
## 従業員
トップページ最下部にある従業員専用ページボタンから従業員専用ページへ遷移し

新規登録、もしくはログインをします。

従業員専用ページにて、
**新規メニューの出品**・**新規ニュースの投稿**・**メニューの編集と削除**・**ニュースの編集と削除**

が行えます。

## ユーザー
トップページから

**ニュースの一覧**、**メニューの一覧**、**お問い合わせフォームの送信**、**アクセスの確認**

が行えます。

各ニュースのタイトル、各メニューの画像をクリックすることで

**詳細画面**を確認できます。

# 目指した課題解決
**コロナ禍で困っている飲食店を含め、その他商業施設などの集客**と**オシャレなものに敏感なインフルエンサー**を**インターネット、SNSを通じて繋げる**ことを目指しました。

# 洗い出した要件

|優先順位(高：3、中：2、低：1)|機能|目的|詳細|ストーリー(ユースケース)|見積もり(所要時間)|
|:-:|:-:|:-:|:-:|:-:|:-:|
|3|従業員専用ページ|従業員のみ行えるの機能を実装するため|サインイン、ログインにログアウトメニュー出品にニュースの投稿が行えるページへ遷移させるリンクを作る|・ログインしていなければ、ログイン、サインインボタンを表示<br>・ログインしていればメニューの出品、ニュースの投稿、ログアウトボタンを表示|5時間|
|3|授業員専用ログイン|従業員のみ行える機能を実装するため<br>ユーザーと従業員を分けるため|deviseを導入し、ユーザー管理を行うパスワードを予め設定しておきそのパスワードでなければログイン、サインインが通らないようにすることで従業員とユーザーを分けるようにする|・従業員専用ページからサインイン、ログインページへ遷移する<br>・必須項目であるパスワードが予め決められたパスワードでないとエラーメッセージが表示され通らないようにする|8時間|
|3|メニューの出品機能|従業員が新規のメニューの出品を行えるようにするため|従業員専用ページのリンクから新規メニューの出品が行える|・従業員専用ページでログインが完了していることが前提<br>・従業員専用ページのメニューのボタンをクリック<br>・出品が正しく行えたらトップページへ遷移<br>・出品が正しく行えなかったらエラーメッセージが表示|5時間|
|3|メニューの一覧表示|出品されたメニューの一覧が見れるようにするため|出品されたメニューの各(画像、名前、値段の)3つをトップページに一覧で表示させる|・メニューが出品されている場合、トップページに表示<br>・メニューが出品されていない場合、「現在取扱商品がございません」と表示|5時間|
|3|メニューの詳細表示|出品されたメニューの詳細が見れるようにするため|出品されたメニューの画像をクリックするとモダールで詳細が表示される|・メニューの画像をホバーするとクリックできるよなモーションが表示される<br>・メニュー画像をクリックするとモーダルでメニューの画像、名前、値段、説明が表示される<br>・ログインしている場合、編集ボタンと削除ボタンを表示<br>・モーダル右上のXボタンをクリックでモーダルを閉じる|6時間|
|3|メニューの編集機能|従業員が出品されたメニューの編集が行えるようにするため|出品されたメニューの詳細画面に表示された編集ボタンからメニューの編集が可能|・従業員専用ページでログインが完了していることが前提条件<br>・メニューの詳細画面を開き、編集ボタンをクリック<br>・メニューの情報が引き継がれた状態で編集ページへ遷移<br>・編集が正しく行えたらモーダルが表示されたままトップページへ遷移するのでモーダルを閉じ、更新ボタンをクリックすることで反映<br>・編集が正しく行えなかったらエラーメッセージを表示|5時間|
|3|メニューの削除機能|従業員が出品されたメニューの削除が行えるようにするため|出品されたメニューの詳細画面に表示された削除ボタンからメニューの削除が可能|・従業員専用ページでログインが完了していることが前提条件<br>・メニューの詳細画面を開き、削除ボタンをクリック<br>・削除が正しく行えたらモーダルが表示されたままトップページへ遷移するのでモーダルを閉じ、更新ボタンをクリックすることで反映|3時間|
|3|ニュースの投稿機能|従業員が新規のニュースの投稿を行えるようにするため|従業員専用ページのリンクから新規ニュースの投稿が行える|・従業員専用ページでログインが完了していることが前提<br>・従業員専用ページのニュースのボタンをクリック<br>・投稿が正しく行えたらトップページへ遷移<br>・投稿が正しく行えなかったらエラーメッセージが表示|5時間|
|3|ニュースの一覧表示|投稿されたニュースの一覧が見れるようにするため|投稿されたニュースの各(日付、タイトル)2つをトップページに一覧で表示させる|・ニュースが投稿されている場合、トップページに表示<br>・ニュースが投稿されていない場合、「現在お知らせはございません」と表示|5時間|
|3|ニュースの詳細表示|投稿されたニュースの詳細が見れるようにするため|投稿されたニュースのタイトルをクリックするとモダールで詳細が表示される|・ニュースのタイトルをホバーするとクリックできるようなモーションが表示される<br>・ニュースのタイトルをクリックするとモーダルでニュースの日付、タイトル、内容、画像が表示される<br>・ログインしている場合、編集ボタンと削除ボタンを表示<br>・モーダル右上のXボタンをクリックでモーダルを閉じる|6時間|
|3|ニュースの編集機能|従業員が投稿されたニュースの編集が行えるようにするため|投稿されたニュースの詳細画面に表示された編集ボタンからニュースの編集が可能|・従業員専用ページでログインが完了していることが前提条件<br>・ニュースの詳細画面を開き、編集ボタンをクリック<br>・ニュースの情報が引き継がれた状態で編集ページへ遷移<br>・編集が正しく行えたらモーダルが表示されたままトップページへ遷移するのでモーダルを閉じ、更新ボタンをクリックすることで反映<br>・編集が正しく行えなかったらエラーメッセージを表示|5時間|
|3|ニュースの削除機能|従業員が投稿されたニュースの削除が行えるようにするため|投稿されたニュースの詳細画面に表示された削除ボタンからニュースの削除が可能|・従業員専用ページでログインが完了していることが前提条件<br>・ニュースの詳細画面を開き、削除ボタンをクリック<br>・削除が正しく行えたらモーダルが表示されたままトップページへ遷移するのでモーダルを閉じ、更新ボタンをクリックすることで反映|3時間|
|3|お問い合わせフォームの投稿|ユーザーがお問い合わせができるようにするため|お問い合わせフォームの入力し送信が可能|・トップページのコンタクトからお問い合わせフォームの入力を行う<br>・入力が完了したら送信ボタンクリック<br>・正しく入力されていて送信が完了したらトップページ上部に遷移し送信完了のメッセージが表示される<br>・正しく入力がされておらず送信ができなかった場合、トップページへ遷移しエラーメッセージが表示される|6時間|
|2|フォーム送信時の確認機能|ユーザーにフォームの入力内容に誤りがないか確認してもらうため|フォーム送信時、アラートを表示しフォームの送信を続行するかキャンセルするか選択が可能|・トップページのコンタクトからお問い合わせフォームの送信ボタンをクリック<br>・アラートが表示されOKを押すと入力した内容が送信される<br>・キャンセルを押すと送信がキャンセルされる|3時間|
|3|エラーメッセージの表示|入力項目がある箇所で送信に失敗した場合にエラーメッセージを表示させるため|サインイン、ログイン、メニューの出品、編集、ニュースの投稿、編集、お問い合わせフォームの送信時にデータの保存か正しく行われなかった場合にエラーメッセージを表示|・各フォームの送信時、入力内容に間違いがあり送信に失敗した場合、エラーメッセージが表示され送信に失敗したことを促す|5時間|
|2|エラーメッセージを日本語で表示|ユーザーの多くが日本人を想定しているため|エラーメッセージが全て日本語で表示される|・各フォームの送信時、入力内容に間違いがあり送信に失敗した場合に表示されるエラーメッセージが全て日本語で表示される|3時間|
|2|flashメッセージの表示|お問い合わせフォームの送信完了を表示させるため|お問い合わせフォームの送信が正しく行われた場合にユーザーに送信が正しく行われたことがわかるように「送信完了」と表示|・トップページのコンタクトからお問い合わせフォームを正しく入力できていることが前提条件<br>・送信をクリックし、アラートが表示されるのでOKをクリック<br>・送信が完了し、トップページの最上部に遷移<br>・「送信完了」のメッセージが表示される|4時間|
|2|エラーメッセージを非同期で表示|各フォームの入力内容に誤りがないか随時注意を促すため|サインイン、ログイン、メニューの出品、編集、ニュースの投稿、編集、お問い合わせフォームの内容入力時に正しい入力内容でない場合に随時エラーメッセージを表示|・各フォームで誤った内容を入力<br>・入力内容の何が誤っているのかを随時検知し誤った入力内容に応じてエラーメッセージが表示される|6時間|
|2|エラーメッセージとflashメッセージを非表示|各フォームで表示されたエラーメッセージやflashメッセージを非表示にできるようにするため|各フォームで表示されたエラーメッセージやflashメッセージをメッセージの右上にあるXボタンをクリックで非表示が可能|・各フォームを送信<br>・表示されたエラーメッセージ、もしくはflashメッセージの右上にあるXボタンをクリックで非表示にすることが可能|4時間|
|1|GoogleMap遷移|より詳細な場所を提示するため|アクセス画像がクリックするとGoogleMapへ遷移するようなリンクになっている|・トップページのアクセスから左側の画像をクリック<br>・画像をクリックするとGoogleMapに遷移し、より詳細な場所が表示される|4時間|
|1|画像プレビュー機能|選択した画像が見えるようにするため|メニューの出品時、ニュースの投稿時に選択した画像が表示される|・従業員専用ページでログインが完了していることが前提条件<br>・従業員専用ページからメニューもしくはニュースボタンをクリックし新規メニューの出品画面、もしくは新規ニュースの投稿画面に遷移する<br>・画像の選択を行うとプレビューが表示される|4時間|
|1|フェードイン機能|目を引くデザインを演出するため|各コンテンツのタイトルに浮き上がるようなフェードイン表示<br>メニューの一覧に横からスライドしてくるようなフェードイン表示|・トップページ最上部から下にスクロールしていくと各コンテンツのタイトルが浮き上がるように表示<br>・メニューが出品されていることが前提条件<br>・メニューの一覧表示では横からスライドしてくるような表示<br>・上から下へのスクロール時のみ表示され、一度するロールしてしまうと更新をしない限りフェードイン機能は実行されない|3時間|
|2|強制スクロール機能|指定の場所まで強制的にスクロールさせるため|メニューバーのコンテンツをそれぞれクリックするとコンテンツごとの場所まで強制的にスクロールしてくれる|・メニューバーのコンテンツをクリック<br>・クリックしたコンテンツのタイトルの場所まで強制的にスクロール|3時間|
|2|メニューバーの固定化|ユーザーが常にメニューバーを選択できるようにするため|スクロールをしても常に画面の上部にメニューバーが固定で表示されている状態|・スクロールして画面を移動させる<br>・メニューバーが常に画面上に固定で表示されている状態が確認できる|2時間|
|2|スクロールバーの表示|スクロールできることを促すスクロールバーを表示させるため|ニュース一覧の側部にスクロールしないと見えない部分があることがわかるようにスクロールバーを表示|・ニュースの投稿数が6つ以上が前提条件<br>・トップページのニュースにてニュース一覧の範囲が限られているため、表示範囲よりニュースの数が多い場合にスクロールバーが表示され範囲内でスクロールすることで見えなかったニュースを確認することができる<br>・表示範囲よりニュースの数が少ない場合はスクロールバーは表示されない|3時間|
|2|モーダル表示|ユーザーの遷移をできる限り減らすため|メニューの詳細画面、ニュースの詳細画面をモーダルで表示|・メニュー、もしくはニュースが最低1つ出品、投稿されていることが前提条件<br>・メニューであれば画像、ニュースであればタイトルをクリック<br>・モーダルでそれぞれの詳細画面が表示される<br>・モーダル内右上のXボタンでモーダルを非表示にできる|6時間|
|1|CSSアニメーション|ユーザーの目を引くデザインにするため|トップページ上部の背景画像のアニメーション<br>メニューの画像のアニメーション|・トップページ上部の背景画像が一定時間ごとに消えたり浮かび上がったりするようなアニメーションが確認できる<br>・メニューが最低1つ出品されているのが前提条件<br>・トップページのメニューからメニュー一覧のメニューの画像にカーソルをかざすと画像が動き、クリックできるようなアニメーションが確認できる|8時間|
|3|AWSへデプロイ|世界中へのアプリ公開のため|AWSのプラットフォームへのデプロイ|・Elastic IPを使用することでアプリケーションにアクセスすることができる|6時間|
|2|デプロイの自動化|アプリケーション運営の効率化を図るため|Capistranoを導入し、デプロイの処理行程数を減らし簡易化|・アプリケーションに変更があった場合、修正や変更をし、githubのcommit、push後、EC2のアプリケーションディレクトリへ移動、プロセスの削除後にローカルのアプリケーションディレクトリへ移動しデプロイ|5時間|
|3|レスポンシブ対応|モバイルからのアクセスを想定しているため|モバイルの縦画面の場合とモバイルの横画面の場合の2つのブレイクポイントを設けレスポンシブ対応を行う|・モバイル端末からのアクセスもしくは検証ツールを使い、縦幅599px以下に設定が前提条件<br>・viewの構造が縦画面に合わせた表示に変更されたのが確認できる<br>・モバイル端末を横画面かつ横幅900ox以下が前提条件<br>・viewの構造が横画面に合わせた表示に変更されたのが確認できる|10時間|
|3|従業員ページの非表示|PCからでなければ従業員ページへのアクセス及びそれに伴う従業員のみ行える機能を制限するため|レスポンシブデザインを使用しブレイクポイントを設け従業員ページへのアクセス及びそれに伴う従業員のみ行える機能の非表示で制限を設ける|・横幅1024px以下であることが前提条件<br>・従業員専用ページへのアクセスボタンが非表示<br>・その他、想定しない形でアクセスされてしまった場合を想定して従業員のみ行える全て(出品、投稿、編集、削除)の機能において非表示されるように設定<br>・メニューの詳細画面、ニュースの詳細画面にて表示されていた編集ボタンと削除ボタンもログインしていても非表示になるように設定|3時間|
|3|DB設計|必要なテーブルの作成のため|user/menu/news/contactのテーブルを作成||5時間|


# 実装した機能についての説明

# データベース設計

## user テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false, unique: true |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

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
| title    | string     | null: false                    |
| contents | text       | null: false                    |
| user     | references | null: false, foreign_key: true |

## contact テーブル
| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| email        | string  |             |
| phone_number | string  |             |
| category_id  | integer | null: false |
| contents     | text    | null: false |
| reply_id     | integer | null: false |

# ER図

[![Image from Gyazo](https://i.gyazo.com/7b2fc619a40dc9270cd3904a95a18a76.png)](https://gyazo.com/7b2fc619a40dc9270cd3904a95a18a76)


# ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージやRubyのバージョンなど）。
