FactoryGirl.define do
  factory :google_sheets_engine_sheet, class: 'GoogleSheetsEngine::Sheet' do
    url "MyString"
    sheet_name { Faker::Name.name } 
    column_row 1
    columns "[name, age, city]"
  end
end
