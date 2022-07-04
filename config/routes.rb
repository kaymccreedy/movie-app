Rails.application.routes.draw do
  
  get "/actor/:id", controller: "actors", action: "actor"

  get "/movies" => "movies#show_all"

  get "/movies/:id" => "movies#show_one"

end
