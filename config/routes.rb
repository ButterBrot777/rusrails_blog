Rails.application.routes.draw do
  get 'welcome/index'
  get 'articles/new'
  get 'articles/show'

  resources :articles do
	  resources :comments
  end
  
  # root 'welcome#index'
  root 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
