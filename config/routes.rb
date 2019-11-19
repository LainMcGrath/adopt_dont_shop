Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get '/shelter', to: 'shelter#index'
  get '/shelter/new', to: 'shelter#new'
  post '/shelter', to: 'shelter#create'
  get '/shelter/:id', to: 'shelter#show'
  get '/shelter/:id/edit', to: 'shelter#edit'
  patch '/shelter/:id', to: 'shelter#update'
  delete 'shelter/:id', to: 'shelter#destroy'
end
