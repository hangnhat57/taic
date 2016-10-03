Rails.application.routes.draw do
  devise_for :customers, ActiveAdmin::Devise.config.merge(path: "/client")
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
