Rails.application.routes.draw do
  post '/', to: 'event#create'
  get '/events', to: 'event#index'

  concern :event do |options|
    shallow do
      get '/events', { to: "event#issue", on: :member }.merge(options)
    end
  end

  resources :issues, only: [] do
    concerns :event
  end
  
end
