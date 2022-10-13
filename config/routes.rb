Rails.application.routes.draw do
  get "/states" => "states#index"
  get "/states/:code" => "states#show"
  get "/states/:state" => "states#show_state"
end
