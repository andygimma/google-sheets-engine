GoogleSheetsEngine::Engine.routes.draw do
  root to: "dashboard#index"
  resources :sheets
end
