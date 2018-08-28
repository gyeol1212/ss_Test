class HomeController < ApplicationController
  before_action :is_logged_in?, only: [:index]
  def index
  end

  def visitor

  end

  private
    def is_logged_in? # 로그인 되었는지 확인하고 안되어 있으면 되돌아가기
      unless user_signed_in?
        flash[:alert] = "로그인 후 이용하세요."
        redirect_to new_user_session_path
      end 
    end
end
