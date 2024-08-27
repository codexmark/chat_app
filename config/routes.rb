# config/routes.rb
Rails.application.routes.draw do
  post '/conversations', to: 'conversations#create'
  get '/conversations/:id', to: 'conversations#show', as: :conversation
  delete '/conversations/:id', to: 'conversations#destroy'
  post '/conversations/:id/messages', to: 'messages#create'
  get '/conversations', to: 'conversations#index'
  get '/welcome', to: 'welcome#index'
  post '/welcome', to: 'welcome#create'
  root to: 'welcome#index'
end