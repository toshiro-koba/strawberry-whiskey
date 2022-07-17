namespace :api do
  get '/students', to: 'students#index'
end

# namespace :api do
#   get '/students', to: 'students#index'
#   namespace :dummy do
#     resources :hoges
#   end
# end
