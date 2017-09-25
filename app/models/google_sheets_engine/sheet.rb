module GoogleSheetsEngine
  class Sheet < ApplicationRecord
     validates :url, presence: true
     validates :name, presence: true
     validates :column_row, presence: true
     validates_uniqueness_of :name, scope: :url
  end
end
