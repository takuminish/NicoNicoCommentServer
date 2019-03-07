Rails.application.routes.draw do
  get '/', to: 'comments#new'
  get "comments/#{ENV['URL']}", to: 'comments#show'
  post '/comments/new', to: 'comments#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
