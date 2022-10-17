Rails.application.routes.draw do
  get "/states" => "states#index"
  get "/states/:state" => "states#show_state"
  get "/states/:code" => "states#show"
  get "/states/codes" => "states#code_index"
end
