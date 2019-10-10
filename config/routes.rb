Rails.application.routes.draw do
  resources :websites do
    collection do
      post :confirm
    end
  end
end
