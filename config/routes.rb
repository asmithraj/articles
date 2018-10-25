Rails.application.routes.draw do
  	root 'welcome#index'
  	get 'welcome/index'
  	resources :articles do
	    resources :comments
    end
    resources :categories
  	get 'blog/new', to: 'blog#new'
	post 'blog/new', to: 'blog#create'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
