Rails.application.routes.draw do
  root to: redirect('/swagger.json')

  resources :tarefas
  match '/tarefas', to: 'application#options', via: [:options]
  match '/tarefas/:id', to: 'application#options', via: [:options]

  resources :situacoes
  match '/situacoes', to: 'application#options', via: [:options]
  match '/situacoes/:id', to: 'application#options', via: [:options]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



