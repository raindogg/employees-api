Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do
      get '/employees' => 'employees#index'
      post '/employees' => 'employees#create'
      get '/employees/:id' => 'employees#show'
    end

    namespace :v2 do
      get '/employees' => 'employees#index'
      post '/employees' => 'employees#create'
      get '/employees/:id' => 'employees#show'
    end
  end
end
