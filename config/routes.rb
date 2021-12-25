Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'homes/about', as: 'about'
  get 'dandd', to: 'homes#dandd', as: 'dandd'
  get 'modal', to: 'homes#modal', as: 'modal'
  resource :user
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ルーティングに駄文を入れる
end
