Rails.application.routes.draw do
  get 'jokes/index'
  get 'all_events/index'
  resources :entries
  root to: "entries#index"
end
