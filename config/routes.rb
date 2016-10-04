Rails.application.routes.draw do
  root to: 'nav#index'
  get 'client/summaries/:id', to: redirect('/404')
  get 'client/summaries/new', to: redirect('/404')
  get 'client/summaries/edit', to: redirect('/404')
  devise_for :customers, ActiveAdmin::Devise.config.merge(path: "/client",skip:[:registrations])
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
