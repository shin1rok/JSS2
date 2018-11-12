Rails.application.routes.draw do
  resources :resumes
  resources :profiles
  devise_for :recruiters
  devise_for :job_seekers
  root 'companies#index'
  resources :job_offers
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
