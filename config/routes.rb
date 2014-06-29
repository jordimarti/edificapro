Rails.application.routes.draw do
  get 'library/index'
  get 'visitors/contact'
  get 'visitors/legal'
  get 'visitors/terms'

  root :to => "visitors#index"
  devise_for :users
end
