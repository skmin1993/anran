
Rails.application.routes.draw do

 

  constraints DomainConstraint.new('anran.com.my') do
    root :to => 'welcome#my' 
end

    get 'welcome/index' 
   root 'welcome#index' , as: nil



 resources :welcome, only: [:index] do
     collection do
      get :my
    end
end
end