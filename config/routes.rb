require 'domain_constraint'
Rails.application.routes.draw do



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