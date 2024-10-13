Rails.application.routes.draw do
  # Autenticación de usuarios
  devise_for :users

  # Rutas para articles
  resources :articles

  # Ruta para render#index (si aún la necesitas)
  get "render/index"

  # Ruta de verificación de salud
  get "up" => "rails/health#show", as: :rails_health_check

  # Rutas para PWA
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Ruta raíz
  root "articles#index"
end