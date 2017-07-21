Rails.application.routes.draw do
  root :to => 'parks#index'
  resources :parks do
    resources :activities
  end
end
