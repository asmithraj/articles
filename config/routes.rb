Rails.application.routes.draw do
  get 'categories/new'

  	root 'welcome#index'
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
