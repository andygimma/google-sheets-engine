require 'spec_helper'

RSpec.describe "google_sheets_engine/sheets/new", type: :view do
  before(:each) do
    assign(:sheet, GoogleSheetsEngine::Sheet.new())
  end

  it "renders new sheet form" do
    render

    assert_select "form[action=?][method=?]", sheets_path, "post" do
    end
  end
end
