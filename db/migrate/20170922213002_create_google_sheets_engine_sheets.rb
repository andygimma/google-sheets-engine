class CreateGoogleSheetsEngineSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :google_sheets_engine_sheets do |t|
      t.string :url, null: false
      t.string :sheet_name, null: false
      t.integer :column_row, null: false
      t.string :columns, null: false
      t.timestamps
    end
  end
end
