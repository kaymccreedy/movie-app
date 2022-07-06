Rails.application.routes.draw do
  
  get "/actor/:id" => "actors#actor"

  get "/actor" => "actors#show"

  post "/actor" => "actors#post"

  get "/movies" => "movies#show_all"

  get "/movies/:id" => "movies#show_one"

end
