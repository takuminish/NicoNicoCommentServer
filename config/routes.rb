Rails.application.routes.draw do
  get 'comments/new', to: 'comments#new'
  get 'comments/show', to: 'comment#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
