Rails.application.routes.draw do
  resources :situacoes
  resources :tarefas
  root to: redirect('/swagger.json')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end



