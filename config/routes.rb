
Rails.application.routes.draw do

 


    get 'welcome/index' 
   root 'welcome#index' , as: nil



 resources :welcome, only: [:index] do
     collection do
      get :my
    end
end

  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('anran.com.my')
  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('http://anran.com.my/')
  root  'welcome#my', as: nil, :constraints => DomainConstraint.new('mydomain.com')
end