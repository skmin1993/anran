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

  constraints (DomainConstraint.new('www.anran.com.my')) do
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

  constraints(DomainConstraint.new('www.bctherbalists.com.my')) do
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

  constraints(DomainConstraint.new('www.viennahome.com.my')) do
    root :to => 'viennahome#index', as: nil
  end

  constraints(DomainConstraint.new('iconmakergroup.com.my')) do
    root :to => 'iconmaker#index', as: nil

    resources :about, only: [:index] do
    end

    resources :contact_us, only: [:index] do
    end

    resources :service, only: [:index] do
    end

    resources :portfolio, only: [:index] do
    end

  end  

  constraints(DomainConstraint.new('www.iconmakergroup.com.my')) do
    root :to => 'iconmaker#index', as: nil

    resources :about, only: [:index] do
    end

    resources :contact_us, only: [:index] do
    end

    resources :service, only: [:index] do
    end

    resources :portfolio, only: [:index] do
    end

  end

  constraints(DomainConstraint.new('yoshiyoshirobata.com.my')) do
    root :to => 'yoshirobata/home#index', as: nil
      namespace :yoshirobata do
        resources :home, only: [:index] do
          collection do 
            get :cn
          end
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
  end

  constraints(DomainConstraint.new('www.yoshiyoshirobata.com.my')) do
    root :to => 'yoshirobata/home#index', as: nil
      namespace :yoshirobata do
        resources :home, only: [:index] do
          collection do 
            get :cn
          end
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
  end

  constraints(DomainConstraint.new('chinsannursery.com.my')) do
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

  constraints(DomainConstraint.new('www.chinsannursery.com.my')) do
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

  constraints(DomainConstraint.new('flyingengineering.com')) do
    root :to => 'flyingengineering/home#index', as: nil
     namespace :flyingengineering, only: [:index] do
       resources :home, only: [:index] do
          collection do 
            get :cn
          end
        end
      resources :portfolio, only: [:index] do
          collection do
            get 'awning'
            get 'awning_structure_fabrication'
            get 'cage_fabrication'
            get 'cabinet_fabrication'
            get 'concrete_kerb'
            get 'concrete_plinth'
            get 'concrete_work'
            get 'convenyor'
            get 'custom_awning'
            get 'custom_racking'
            get 'custom_sink'
            get 'custom_stainless_steel'
            get 'custom_steel_work'
            get 'drain_cover'
            get 'fencing'
            get 'frame_fabrication'
            get 'guardhouse_barrier'
            get 'gutter_fabrication'
            get 'door_frame'
            get 'truss'
            get 'monkey_zigzag'
            get 'others'
            get 'piping_work'
            get 'platform'
            get 'pvc_curtain'
            get 'ramp_fabrication'
            get 'roofing_repair'
            get 'safety_barrier_fabrication'
            get 'safety_cover'
            get 'stainless_steel_ducting'
            get 'tank_fabrication'
            get 'trolley_fabrication'
            get 'trolley_track_repair'
            get 'walk_way'
            get 'waste_bin_fabrication'
          end
        end
      end
  end

  constraints(DomainConstraint.new('www.flyingengineering.com')) do
    root :to => 'flyingengineering/home#index', as: nil
     namespace :flyingengineering, only: [:index] do
       resources :home, only: [:index] do
          collection do 
            get :cn
          end
        end
      resources :portfolio, only: [:index] do
          collection do
            get 'awning'
            get 'awning_structure_fabrication'
            get 'cage_fabrication'
            get 'cabinet_fabrication'
            get 'concrete_kerb'
            get 'concrete_plinth'
            get 'concrete_work'
            get 'convenyor'
            get 'custom_awning'
            get 'custom_racking'
            get 'custom_sink'
            get 'custom_stainless_steel'
            get 'custom_steel_work'
            get 'drain_cover'
            get 'fencing'
            get 'frame_fabrication'
            get 'guardhouse_barrier'
            get 'gutter_fabrication'
            get 'door_frame'
            get 'truss'
            get 'monkey_zigzag'
            get 'others'
            get 'piping_work'
            get 'platform'
            get 'pvc_curtain'
            get 'ramp_fabrication'
            get 'roofing_repair'
            get 'safety_barrier_fabrication'
            get 'safety_cover'
            get 'stainless_steel_ducting'
            get 'tank_fabrication'
            get 'trolley_fabrication'
            get 'trolley_track_repair'
            get 'walk_way'
            get 'waste_bin_fabrication'
          end
        end
      end
  end
  
end