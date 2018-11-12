class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    skip_before_action :verify_authenticity_token
    # 다운받는 파일 이름 설정하기 위해 필요
    def set_attachment_name(name)
        escaped = URI.encode(name)
        response.headers['Content-Disposition'] = "attachment; filename*=UTF-8''#{escaped}"
    end

    # devise
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 회원가입용 permit
        devise_parameter_sanitizer.permit(:account_update, keys: [:name]) # 유저정보 업데이트용 permit
    end
    # def after_sign_in_path_for(resource)
    #     redirect_to home_index_path
    # end
end
