Rails.application.routes.draw do
  devise_for :users
  root to: "topics#index"
  resources :topics do
    get :search, on: :collection
    resources :points do
      resources :comments, only: :create
    end
  end

end
