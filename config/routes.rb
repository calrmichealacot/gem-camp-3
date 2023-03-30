Rails.application.routes.draw do
  devise_for :users
  get 'categories/index'
  get 'categories/new'
  get 'categories/edit'
  root 'welcome#index'
  resources :posts do
    resources :comments, except: :show
  end
  resources :categories, except: :show
end