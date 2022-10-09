Rails.application.routes.draw do
  get 'states/index'
  get "/states" => "states#index"
  get "/states/:STATE_ABBREVIATION" => "states#show"
end
