Rails.application.routes.draw do

  get '/entries/alphabetical/:letter', to: 'entries#show_by_letter'

  resources :entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
