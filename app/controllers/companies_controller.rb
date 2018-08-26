class CompaniesController < ApplicationController
  def index
    @companies = Company.all

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
    @company.save
    redirect_to companies_path
  end

  def show
    @company = Company.find(params[:id])
  end
  def destroy
    @company = Company.find(params[:id])
    @company.destroy

    redirect_to companies_path
  end

  def post_params
    params.require(:company).permit(:logo, :logo_ai, :express_file, :presentation, :season, :name, :name_en, :service_name, :service_name_en, :isRegistered, :register_num, :established_date, :isCorporated, :corporated_num, :corporated_date, :co_CEO, :CEO, :address, :company_overview, :service_overview, :website, :sns, :cellphone_num, :phone_num, :fax_num, :move_in_date, :move_out_date, :isBusinessStudent, :mentoring)
  end
end
