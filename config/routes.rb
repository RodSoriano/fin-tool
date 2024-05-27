Rails.application.routes.draw do
  Rails.application.routes.draw do
    defaults export: true do
      # TODO: delete the demo model and all its related files
      # once the first release is merged into main
      resources :demos
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
