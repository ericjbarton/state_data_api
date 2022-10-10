Rails.application.routes.draw do
  get "/states" => "states#index"
  # get "/states/:state" => "states#show"
  get "/states/:code" => "states#show"
  get "/abbreviations" => "abbreviations#index"
end
