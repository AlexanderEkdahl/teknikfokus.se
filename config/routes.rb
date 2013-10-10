Teknikfokus::Application.routes.draw do
  root 'welcome#index'

  resources :officials do
    get 'thank_you', on: :collection
  end

  get '/funktionär', to: redirect('/officials/new')
end
