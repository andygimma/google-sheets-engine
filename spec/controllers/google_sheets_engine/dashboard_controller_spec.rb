require 'spec_helper'

module GoogleSheetsEngine
  RSpec.describe DashboardController, type: :controller do
    routes { GoogleSheetsEngine::Engine.routes }
    it "recognizes the index template" do
      assert_generates '/', controller: 'google_sheets_engine/dashboard', action: 'index'
    end
  end
end
