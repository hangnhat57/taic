Rails.application.routes.draw do
  root to: 'nav#index'
  get 'client/usage_reporters/:id', to: redirect('/404')
  get 'client/usage_reporters/new', to: redirect('/404')
  get 'client/usage_reporters/edit', to: redirect('/404')
  devise_for :customers, ActiveAdmin::Devise.config.merge(path: "/client",skip:[:registrations])
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
