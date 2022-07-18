namespace :api do
  namespace :v1 do
    post '/tickets/completion_status', to: 'tickets#completion_status'
  end
end
