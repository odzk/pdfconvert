Rails.application.routes.draw do

resources :pdfconverts

  root 'pdfconverts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
