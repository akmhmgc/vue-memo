Rails.application.routes.draw do
  get "home" , to: "home#index"
  
  namespace :api, format: 'json' do
    resources :memos, only: [:index]
  end
end
