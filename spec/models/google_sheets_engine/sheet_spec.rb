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

    it "is invalid without a name" do
      sheet = FactoryGirl.build(:google_sheets_engine_sheet, name: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a column_row" do
      sheet = FactoryGirl.build(:google_sheets_engine_sheet, column_row: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid when a url has the same sheet name twice" do
      name = 'name'
      sheet = FactoryGirl.create(:google_sheets_engine_sheet, url: 'www.example.com', name: name)
      sheet2 = FactoryGirl.build(:google_sheets_engine_sheet, url: 'www.example.com', name: name)

      expect(sheet2).not_to be_valid
    end

    it "is valid when two urls have the same sheet name" do
      name = 'name'
      sheet = FactoryGirl.create(:google_sheets_engine_sheet, url: 'www.example.com', name: name)
      sheet2 = FactoryGirl.build(:google_sheets_engine_sheet, url: 'www.example2.com', name: name)

      expect(sheet2).to be_valid
    end
  end
end
