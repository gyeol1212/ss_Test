class CompaniesController < ApplicationController
  before_action :is_logged_in?
  before_action :is_admin?, only: [:destroy]

  def index
    if params && params[:q]
      @companies = Company.where(params[:q][:field] => params[:q][:value])
      @queryString = "?q[field]=#{params[:q][:field]}&q[value]=#{params[:q][:value]}"
    else
      @companies = Company.all
    end

    respond_to do |format|
      format.html
      format.csv { send_data @companies.to_csv }
      format.xls { set_attachment_name "기업정보-#{Time.now.strftime("%Y%m%d%H%M%S")}.xls" } # 파일 이름 설정 -> application_controller.rb 설정 필요
    end
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(post_params)
    if @company.save
      redirect_to companies_path
    else
      flash[:alert] = @company.errors # 유효성 검사를 통과하지 못할 경우 다시 new_company 페이지로 보냄 with flash
      redirect_to new_company_path
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    redirect_to companies_path
  end

  private
    def post_params
      params.require(:company).permit(:logo, :logo_ai, :express_file, :presentation, :season, :name, :name_en, :service_name, :service_name_en, :isRegistered, :register_num, :established_date, :isCorporated, :corporated_num, :corporated_date, :co_CEO, :CEO, :address, :company_overview, :service_overview, :website, :sns, :cellphone_num, :phone_num, :fax_num, :move_in_date, :move_out_date, :isBusinessStudent, :mentoring)
    end

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
