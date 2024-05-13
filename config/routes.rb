Rails.application.routes.draw do
  Rails.application.routes.draw do
    defaults export: true do
      resources :demos
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
