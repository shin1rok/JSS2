Rails.application.routes.draw do
  resources :work_histories
  resources :education_histories
  resources :company_messages
  resources :job_seeker_messages
  resources :resumes
  resources :profiles
  devise_for :recruiters
  devise_for :job_seekers, controllers: { sessions: 'job_seekers/sessions' }
  root 'companies#index' # TODO ちゃんとする
  resources :job_offers
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
