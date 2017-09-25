module GoogleSheetsEngine
  class Sheet < ApplicationRecord
     validates :url, presence: true
     validates :sheet_name, presence: true
     validates :column_row, presence: true
     validates_uniqueness_of :sheet_name, scope: :url
  end
end
