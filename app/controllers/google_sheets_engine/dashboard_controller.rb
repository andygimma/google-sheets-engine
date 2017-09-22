require_dependency "google_sheets_engine/application_controller"

module GoogleSheetsEngine
  class DashboardController < ApplicationController
    def index
      @sheet = Sheet.new
    end
  end
end
