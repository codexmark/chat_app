Rails.application.routes.draw do
  post '/conversations', to: 'conversations#create'
  get '/conversations/:id', to: 'conversations#show'
  delete '/conversations/:id', to: 'conversations#destroy'
  post '/conversations/:id/messages', to: 'messages#create'
end