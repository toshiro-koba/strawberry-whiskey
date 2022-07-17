namespace :api do
  namespace :v1 do
    get '/tickets', to: 'tickets#index'
  end
end
