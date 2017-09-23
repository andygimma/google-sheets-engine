require 'spec_helper'

RSpec.describe "google_sheets_engine/sheets/index", type: :view do
  before(:each) do
    assign(:sheets, [
      GoogleSheetsEngine::Sheet.create!(url: 'www.example1.com', sheet_name: 'sheet1', column_row: 2),
      GoogleSheetsEngine::Sheet.create!(url: 'www.example2.com', sheet_name: 'sheet2', column_row: 2)
    ])
  end

  it "renders a list of sheets" do
    render
  end
end
