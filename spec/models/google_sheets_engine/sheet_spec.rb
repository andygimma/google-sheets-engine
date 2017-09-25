require 'spec_helper'
require 'faker'

module GoogleSheetsEngine
  RSpec.describe Sheet, type: :model do
    it "has a valid factory" do
      expect(FactoryGirl.build(:google_sheets_engine_sheet)).to be_valid
    end

    it "is invalid without a url" do
      sheet = FactoryGirl.build(:google_sheets_engine_sheet, url: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a sheet_name" do
      sheet = FactoryGirl.build(:google_sheets_engine_sheet, sheet_name: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a column_row" do
      sheet = FactoryGirl.build(:google_sheets_engine_sheet, column_row: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid when a url has the same sheet name twice" do
      sheet_name = 'sheet_name'
      sheet = FactoryGirl.create(:google_sheets_engine_sheet, url: 'www.example.com', sheet_name: sheet_name)
      sheet2 = FactoryGirl.build(:google_sheets_engine_sheet, url: 'www.example.com', sheet_name: sheet_name)

      expect(sheet2).not_to be_valid
    end

    it "is valid when two urls have the same sheet name" do
      sheet_name = 'sheet_name'
      sheet = FactoryGirl.create(:google_sheets_engine_sheet, url: 'www.example.com', sheet_name: sheet_name)
      sheet2 = FactoryGirl.build(:google_sheets_engine_sheet, url: 'www.example2.com', sheet_name: sheet_name)

      expect(sheet2).to be_valid
    end
  end
end
