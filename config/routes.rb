Rails.application.routes.draw do
  devise_for :recruiters
  devise_for :job_seekers
  root 'companies#index'
  resources :job_offers
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
