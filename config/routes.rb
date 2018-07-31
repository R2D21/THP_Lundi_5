Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
  get '/new_user', to: 'users_controller#new_user', as: 'new_user'
  post '/new_user' , to: 'users_controller#new_user'
  get '/users/:id', to: 'users_controller#aff_profile_user'

end
