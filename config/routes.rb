Rails.application.routes.draw do

  resources :datasets do
    resources :people
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "datasets#index"
end
