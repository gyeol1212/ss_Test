class Company < ApplicationRecord
    has_one_attached :logo_ai
    has_one_attached :logo
    has_one_attached :express_file
    has_one_attached :presentation

    belongs_to :user

    # 유효성 검사 추가
    validates :season, presence: true
    validates :name, presence: true
    validates :name_en, presence: true
    validates :service_name, presence: true
    validates :service_name_en, presence: true
    # validates :established_date, presence: true

    # validates :address, presence: true
    # validates :company_overview, presence: true, length: {maximum: 500}
    # validates :service_overview, presence: true, length: {maximum: 500}
    # validates :cellphone_num, presence: true
    # validates :move_in_date, presence: true
    # validates :logo, presence: true
    
    def self.to_csv(options = {})
        CSV.generate(options) do |csv|
            csv << column_names
            all.each do |company|
              csv << company.attributes.values
            end
          end
    end
end
