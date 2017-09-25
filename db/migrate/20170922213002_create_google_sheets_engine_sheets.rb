class CreateGoogleSheetsEngineSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :google_sheets_engine_sheets do |t|
      t.string :url, null: false
      t.string :name, null: false
      t.integer :column_row, null: false
      t.jsonb :columns
      t.timestamps
    end
  end
end
