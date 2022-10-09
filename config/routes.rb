Rails.application.routes.draw do
  get "/states" => "states#index"
  get "/states/:STATE_ABBREVIATION" => "states#show"
end
