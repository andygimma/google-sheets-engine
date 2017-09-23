require "spec_helper"

module GoogleSheetsEngine
  RSpec.describe SheetsController, type: :routing do
    routes { GoogleSheetsEngine::Engine.routes }

    describe "routing" do

      it "routes to #index" do
        expect(:get => "/sheets").to route_to("google_sheets_engine/sheets#index")
      end

      it "routes to #new" do
        expect(:get => "/sheets/new").to route_to("google_sheets_engine/sheets#new")
      end

      it "routes to #show" do
        expect(:get => "/sheets/1").to route_to("google_sheets_engine/sheets#show", :id => "1")
      end

      it "routes to #edit" do
        expect(:get => "/sheets/1/edit").to route_to("google_sheets_engine/sheets#edit", :id => "1")
      end

      it "routes to #create" do
        expect(:post => "/sheets").to route_to("google_sheets_engine/sheets#create")
      end

      it "routes to #update via PUT" do
        expect(:put => "/sheets/1").to route_to("google_sheets_engine/sheets#update", :id => "1")
      end

      it "routes to #update via PATCH" do
        expect(:patch => "/sheets/1").to route_to("google_sheets_engine/sheets#update", :id => "1")
      end

      it "routes to #destroy" do
        expect(:delete => "/sheets/1").to route_to("google_sheets_engine/sheets#destroy", :id => "1")
      end

    end
  end
end
