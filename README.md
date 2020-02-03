# README


# schema.rb で作成したdbのスキーマが見れる　そのまま
# ログイン認証
# devise　を利用する

# 利用方法
# gemに追加
# rails g devise （モデル名) →  データベースのmigrationファイルと、その他各種ファイルが自動的に生成される(※controllerはない)
# データベースの中身を確認し、rails db:migrateでテーブルが作成される


# モデルの中で実装される機能(デフォルト)
# database_authenticatable   パスワードの正確性 
# registerable               ユーザ登録や編集・制限
# recoverable                パスワードの初期化
# rememberable               ログイン情報の記憶
# validatable                emailのフォーマット等のvalidate


# rails g devise:views → 各種viewファイルが自動的に生成される

# deviseはコントローラが用意されない →  編集を行う場合は、application_controllerに記述する

# form_for (resource, as:resource_name,url: registration_path(resource_name)) → ユーザ登録を行うためのフォーム
resource   編集したいモデルのオブジェクト（インスタンス）はどのようなモデルにも対応するため、resourceという抽象化したものを置く
as         モデルのオブジェクト（インスタンス）に対してキーを指定する（今回はresource_name）
registration_path(resource_name)    urlで指定したregistration＿pathに対して、キーのresource_nameを（）内に定義し、どのモデルのインスタンスなのかを明らかにし、urlを明確にする