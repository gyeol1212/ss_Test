class Company < ApplicationRecord
    has_one_attached :logo_ai
    has_one_attached :logo
    has_one_attached :express_file
    has_one_attached :presentation

    def self.to_csv(options = {})
        CSV.generate(options) do |csv|
            csv << column_names
            all.each do |company|
              csv << company.attributes.values
            end
          end
    end
end
