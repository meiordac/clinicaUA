ClinicaUA::Application.routes.draw do
  resources :employee_turns


  resources :places


  resources :turns


  resources :employees


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end