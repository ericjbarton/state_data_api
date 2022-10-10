Rails.application.routes.draw do
  get "/states" => "states#index"
  # get "/states/:state" => "states#show"
  get "/states/:state" => "states#show"
  get "/state_abbreviations" => "state_abbreviations#index"
end
