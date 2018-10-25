class ApplicationController < ActionController::Base
	#protect_from_forgery with: :exception
	
	#만약 devise컨트롤러를 사용한다면 아래의 메소드를 호출
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	#회원가입 시 필요한 입력내용
	def configure_permitted_parameters
		added_attrs = [:email, :name, :nickname, :password, :password_confirmation, :remember_me,:comfirmed_at]
		devise_parameter_sanitizer.permit(:sign_up, key: [:added_attrs])
		devise_parameter_sanitizer.permit(:account_update, key: [:added_attrs])
	end

end
