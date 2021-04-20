require 'domain_constraint'
Rails.application.routes.draw do

  constraints (DomainConstraint.new('anran.com.my')) do
    root :to => 'anran#index', as: nil
      resources :anran, only: [:index] do
       collection do
        get :my
        end
      end
  end

  constraints(DomainConstraint.new('bctherbalists.com.my')) do
    root :to => 'bctherbal#index', as: nil
      resources :bctherbal, only: [:index] do
       collection do
        end
      end
      resources :payment, only: [:index] do  
      end
  end


  constraints(DomainConstraint.new('viennahome.com.my')) do
    root :to => 'viennahome#index', as: nil
  end

  constraints(DomainConstraint.new('iconmakergroup.com.my')) do
    root :to => 'iconmaker#index', as: nil
  end  


  constraints(DomainConstraint.new('yoshiyoshirobata.com.my')) do
    root :to => 'yoshirobata#index', as: nil
    resources :cn, only: [:index] do
    end

    resources :menu, only: [:index] do
       collection do
        get :cn
      end
    end 


   resources :recruit, only: [:index] do
       collection do
        get :cn
      end
    end
  end  

  constraints(DomainConstraint.new('chinsan.my')) do
    root :to => 'chinsan#index', as: nil
     resources :chinsan, only: [:index] do
       collection do
        end
      end
    resources :animal, only: [:index] do  
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

  root :to => 'bctherbal#index', as: nil
end