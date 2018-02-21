Rails.application.routes.draw do
  get 'welcome/index'
post 'sessions/user'
get 'sessions/user'
	resources :articles do
  		resources :comments
	end
	#resources :sessions, path: '/users/sessions'
  root 'welcome#index'
devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
