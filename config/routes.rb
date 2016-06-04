Rails.application.routes.draw do
  resources :companies do
    collection { post :import }
  end
  
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/features'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/pricing'

  get 'welcome/login'

  get 'users/sign_in'

  get 'users/sign_up'
  
  get 'users/sign_out'

  resources :invoices

  root to: 'welcome#index'
end
