Rails.application.routes.draw do
  get "/states" => "states#index"
  # get "/states/:state" => "states#show"
  get "/states/:state" => "states#show"
  get "/abbrevs" => "abbrevs#index"
end
