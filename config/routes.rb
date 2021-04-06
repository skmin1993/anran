require 'domain_constraint'
Rails.application.routes.draw do
  resources :welcome, only: [:index]
  resources :viennahome, only: [:index]
  constraints (DomainConstraint.new('anran.com.my')) do
    root :to => 'welcome#index', as: nil
      resources :welcome, only: [:index] do
       collection do
        get :my
        end
      end
  end

  constraints(DomainConstraint.new('viennahome.com.my')) do
    root :to => 'viennahome#index', as: nil
  end

  root :to => 'viennahome#index', as: nil
end