require 'domain_constraint'
Rails.application.routes.draw do
      resources :anran, only: [:index] do
       collection do
        get :my
        end
      end
  constraints (DomainConstraint.new('anran.com.my')) do
    root :to => 'anran#index', as: nil
      resources :anran, only: [:index] do
       collection do
        get :my
        end
      end
  end

  constraints(DomainConstraint.new('viennahome.com.my')) do
    root :to => 'viennahome#index', as: nil
  end

 constraints(DomainConstraint.new('chinsan.com')) do
    root :to => 'chinsan#index', as: nil
    resources :product, only: [:index] do  
    collection do
      get :chicken_feed
      get :duck_feed
      get :cat_feed
      get :dog_feed
      get :cow_feed
      get :fish_feed
      get :rabbit_feed
    end
  end
  end


  root :to => 'anran#index', as: nil
end