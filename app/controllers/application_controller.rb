class ApplicationController < ActionController::Base

  #deviseのコントローラに追記が必要な場合は、ここに記述する
  #devise機能を利用する場合、その前に before_actionが実行される。 ifの後ろでdevise機能か判定
  before_action :configure_permitted_parameters,if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:name])
  end
end
