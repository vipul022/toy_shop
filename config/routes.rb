Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/toys", to: "toys#index", as: "toys" #show all toys
  post "/toys", to: "toys#create" #create a new toys
  get "/toys/new", to: "toys#new", as: "new_toy" #new form
  get "/toys/:id", to: "toys#show", as: "toy" #show single toy
  put "/toys/:id", to: "toys#update"
  patch "/toys/:id", to: "toys#update"
  get "/toys/:id/edit", to: "toys#edit", as: "edit_toy" 
  delete "/toys/:id", to: "toys#destroy"

  root to: "welcome#index"
end
