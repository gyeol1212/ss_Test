class StateController < ApplicationController

  def index
    @company = Company.find(params[:id])
  end

  def government
    @company = Company.find(params[:id])
    @government = Government.new
  end

  def create_government
    @government = Government.new(params.require(:government).permit(:when, :institution, :title, :content, :related_file, :bigo))
    @government.company = Company.find(params[:government][:company])
    if @government.save
      redirect_back fallback_location: root_path
    else # 유효성 검사를 통과하지 못할 경우 다시 new_company 페이지로 보냄 with flash
      @government.related_file.purge # blob 와 amazon S3에 있는 파일 삭제
      flash[:alert] = ""
      @government.errors.each do |field, messages|
        flash[:alert] += "'#{field}' #{messages} | "
      end
      redirect_back fallback_location: root_path
    end
  end

  def award
    @company = Company.find(params[:id])
    @award = Award.new
  end

  def create_award
    @award = Award.new(params.require(:award).permit(:when, :institution, :title, :content, :related_file, :bigo))
    @award.company = Company.find(params[:award][:company])
    if @award.save
      redirect_back fallback_location: root_path
    else # 유효성 검사를 통과하지 못할 경우 다시 new_company 페이지로 보냄 with flash
      @award.related_file.purge # blob 와 amazon S3에 있는 파일 삭제
      flash[:alert] = ""
      @award.errors.each do |field, messages|
        flash[:alert] += "'#{field}' #{messages} | "
      end
      redirect_back fallback_location: root_path
    end
  end

  def fund
    @company = Company.find(params[:id])
    @fund = Fund.new
  end

  def create_fund
    @fund = Fund.new(params.require(:fund).permit(:when, :institution, :title, :content, :related_file, :bigo))
    @fund.company = Company.find(params[:fund][:company])
    if @fund.save
      redirect_back fallback_location: root_path
    else # 유효성 검사를 통과하지 못할 경우 다시 new_company 페이지로 보냄 with flash
      @fund.related_file.purge # blob 와 amazon S3에 있는 파일 삭제
      flash[:alert] = ""
      @fund.errors.each do |field, messages|
        flash[:alert] += "'#{field}' #{messages} | "
      end
      redirect_back fallback_location: root_path
    end
  end

  def press
    @company = Company.find(params[:id])
    @press = Press.new
  end

  def create_press
    @press = Press.new(params.require(:press).permit(:when, :press_name, :title, :link, :related_file, :bigo))
    @press.company = Company.find(params[:press][:company])
    if @press.save
      redirect_back fallback_location: root_path
    else # 유효성 검사를 통과하지 못할 경우 다시 new_company 페이지로 보냄 with flash
      @press.related_file.purge # blob 와 amazon S3에 있는 파일 삭제
      flash[:alert] = ""
      @press.errors.each do |field, messages|
        flash[:alert] += "'#{field}' #{messages} | "
      end
      redirect_back fallback_location: root_path
    end
  end

  def achievement
    @company = Company.find(params[:id])
    @achievement = Achievement.new
  end

  def create_achievement
    @achievement = Achievement.new(params.require(:achievement).permit(:when, :content, :related_file, :bigo))
    @achievement.company = Company.find(params[:achievement][:company])
    if @achievement.save
      redirect_back fallback_location: root_path
    else # 유효성 검사를 통과하지 못할 경우 다시 new_company 페이지로 보냄 with flash
      @achievement.related_file.purge # blob 와 amazon S3에 있는 파일 삭제
      flash[:alert] = ""
      @achievement.errors.each do |field, messages|
        flash[:alert] += "'#{field}' #{messages} | "
      end
      redirect_back fallback_location: root_path
    end
  end

  def monthly
    @company = Company.find(params[:id])
  end
end
