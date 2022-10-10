Rails.application.routes.draw do
  get "/states" => "states#index"
  get "/states/:state" => "states#show"
  get "/states/:abbrev" => "states#show"
end
