class HomeController < ApplicationController
  before_action :is_logged_in?, except: [:visitor]
  before_action :is_admin?, only: [:manage, :permit]

  def index
  end

  def visitor

  end

  def manage
    @unpermitted_users = User.where(permitted: false)
  end

  def permit
    user = User.find(params[:id])
    user.update(permitted: true) ? flash[:alert] = "#{user.name} 입주자의 가입 승인이 완료되었습니다." : flash[:alert] = "가입 승인 요청이 실패했습니다!"
    redirect_to manage_path
  end

  private
    def is_logged_in? # 로그인 되었는지 확인하고 안되어 있으면 되돌아가기
      unless user_signed_in?
        flash[:alert] = "로그인 후 이용하세요."
        redirect_to new_user_session_path
      end 
    end

    def is_admin?
      unless current_user.admin
        flash[:alert] = "권한이 없습니다."
        redirect_back(fallback_location: root_path)
      end
    end
end
