require 'spec_helper'

RSpec.describe "google_sheets_engine/sheets/show", type: :view do
  before(:each) do
    @sheet = assign(:sheet, GoogleSheetsEngine::Sheet.create!(url: 'http://www.example.com', sheet_name: 'sheet1', column_row: 1))
  end
  it "renders attributes in <p>" do
    render
  end
end
