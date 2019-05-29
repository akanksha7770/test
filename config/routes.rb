Rails.application.routes.draw do
root 'expenses#index'
resources :expenses
   # get 'routines/index'
   # get 'routines/edit'
   # get 'routines/new'
   # get 'routines/show'
  ActiveAdmin.routes(self)
	resources :routines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	