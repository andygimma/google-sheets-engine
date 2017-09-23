module GoogleSheetsEngine
  class Sheet < ApplicationRecord
     validates :url, presence: true
     validates :sheet_name, presence: true
     validates :column_row, presence: true
  end
end
