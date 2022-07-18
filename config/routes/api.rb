namespace :api do
  namespace :v1 do
    get  '/tickets', to: 'tickets#index'
    post '/tickets/completion_status', to: 'tickets#completion_status'
  end
end
