require 'spec_helper'

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

    it "is invalid without a sheet_name" do
      sheet = FactoryGirl.build(:google_sheets_engine_sheet, column_row: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a sheet_name" do
      sheet = FactoryGirl.build(:google_sheets_engine_sheet, columns: nil)
      expect(sheet).not_to be_valid
    end
  end
end
