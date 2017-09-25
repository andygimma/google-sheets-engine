require_dependency "google_sheets_engine/application_controller"

module GoogleSheetsEngine
  class SheetsController < ApplicationController
    before_action :set_sheet, only: [:show, :edit, :update, :destroy]

    # GET /sheets
    def index
      @sheets = Sheet.all
    end

    # GET /sheets/1
    def show
    end

    # GET /sheets/new
    def new
      @sheet = Sheet.new
    end

    # GET /sheets/1/edit
    def edit
    end

    # POST /sheets
    def create
      @sheet = Sheet.new(sheet_params)
      if @sheet.save
        redirect_to @sheet, notice: 'Sheet was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /sheets/1
    def update
      if @sheet.update(sheet_params)
        redirect_to @sheet, notice: 'Sheet was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /sheets/1
    def destroy
      @sheet.destroy
      redirect_to sheets_url, notice: 'Sheet was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_sheet
        @sheet = Sheet.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def sheet_params
        params.fetch(:sheet, {}).permit(:url, :name, :column_row)
      end
  end
end
