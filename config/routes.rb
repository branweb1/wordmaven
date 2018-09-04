Rails.application.routes.draw do
  root 'entries#index'

  get '/about', to: 'static_pages#about', as: 'about'

  get '/l/:letter', to: 'entries#show_by_letter', as: 'letter'

  get 'id/:id', to: 'entries#show', as: 'entry'

  match '*path', to: 'static_pages#not_found', via: :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
