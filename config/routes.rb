Rails.application.routes.draw do
  get "/states" => "states#index"
  get "/states/:state" => "states#show_state"
  get "/states/:code" => "codes#show"
  get "/codes" => "codes#index"
end
