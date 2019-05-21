Rails.application.routes.draw do
  resources :order_details
  resources :invoices
  resources :municipalities
  resources :departments
  resources :regions
  resources :products
  resources :categories
  resources :payment_details
  resources :payments
  resources :payment_types
  resources :customers
  resources :stores
  resources :companies
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
