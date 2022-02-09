Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get "users", to: "devise/sessions#new"
  end

  get 'search_stock', to: 'stocks#search'
  # Defines the root path route ("/")
  # root "articles#index"
end
