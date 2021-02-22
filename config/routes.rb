require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => "/sidekiq"

  root to: "home#index"
  post "/increment_async", to: "home#increment_async"
end
