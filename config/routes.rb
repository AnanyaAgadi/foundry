Rails.application.routes.draw do
  resources :prods
	root 'welcome#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
