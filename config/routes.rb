Ritly::Application.routes.draw do
  root 'urls#new'

  get '/urls/new', to: 'urls#new', as: 'urls_new'
  post '/urls', to: 'urls#create', as: 'urls'
  get '/urls/:id', to: 'urls#show', as: 'url'
  get '/go/:random_string', to: 'urls#go', as: 'go'

end
