Rails.application.routes.draw do

  root 'entries#index'

  get '/l/:letter', to: 'entries#show_by_letter', as: 'letter'

  get 'id/:id', to: 'entries#show', as: 'entry'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
