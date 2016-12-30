Rails.application.routes.draw do
  resources :headlines do
    collection do
      get :autocomplete
    end
  end
end
