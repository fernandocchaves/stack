Rails.application.routes.draw do
  resources :anwsers
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'
  get '/anwsers/:question_id/new', to: 'anwsers#new'

  root to: 'application#index'
end
