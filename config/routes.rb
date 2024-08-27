# config/routes.rb
Rails.application.routes.draw do
  post '/conversations', to: 'conversations#create'
  get '/conversations/:id', to: 'conversations#show', as: :conversation
  delete '/conversations/:id', to: 'conversations#destroy'
  post '/conversations/:id/messages', to: 'messages#create'
  get '/conversations', to: 'conversations#index'
  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
end