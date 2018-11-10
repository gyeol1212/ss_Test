class Award < ApplicationRecord
  belongs_to :company

  has_one_attached :related_file
end
