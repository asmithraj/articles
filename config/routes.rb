Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/create'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # get 'dashboard/show'
  # get 'categories/new'
  resources :sessions, only: [:create]
  resources :users, only: [:new, :create]
  root 'articles#index'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
	# root 'welcome#index'
	get 'welcome/index'
	resources :articles do
    resources :comments
  end
  resources :categories do
  	#resources :articles
  	# get 'categoryshow', :on => :collection
  end
	get 'categories/:category_id/articles', to: 'articles#showcategoryarticles', as: 'show_all'
  get 'blog/new', to: 'blog#new'
	post 'blog/new', to: 'blog#create'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
