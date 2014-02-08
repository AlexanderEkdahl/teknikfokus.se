Teknikfokus::Application.routes.draw do
  root 'welcome#index'

  get '/info', to: 'welcome#info'

  resources :officials do
    get 'thank_you', on: :collection
  end

  get '/funktionar', to: redirect('/officials/new')
  get '/funktionär', to: redirect('/officials/new')
end
