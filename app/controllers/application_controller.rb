class ApplicationController < ActionController::Base

  #Refileを使えるようにするやつ
  Refile.secret_key = '9aa3b8e1a0d7921f1d12d70380a7d4ba9f741bd80deb7723aa850a3afa752795289e2f0691ee9a508dbeb1965cf65a0d34e0fa53b4855174eadd138b182d3085'
  #ログインしていないと強制的にログイン画面へリダイレクトする　という機能
  before_action :authenticate_user!


  #deviseのコントローラに追記が必要な場合は、ここに記述する
  #devise機能を利用する場合、その前に before_actionが実行される。 ifの後ろでdevise機能か判定
  before_action :configure_permitted_parameters,if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:name])
  end
end
