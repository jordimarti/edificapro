Rails.application.routes.draw do
  get 'c02/introduccion'

  get 'purchases/new'

  get 'library/c02'
  get 'library/c01'
  get 'library/index'
  get 'visitors/contact'
  get 'visitors/legal'
  get 'visitors/terms'

  root :to => "visitors#index"
  devise_for :users

  match ':controller(/:action(/:id))', :via => [:get, :post]
end
