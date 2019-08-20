Rails.application.routes.draw do
  resources :pizza_diaries
  root to: 'pizza_diaries#index'
end
